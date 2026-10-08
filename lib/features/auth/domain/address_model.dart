import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

/// =============================================================================
/// Address Model | 91
/// =============================================================================

@freezed
abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    // Identification
    int? id,
    String? label,
    String? type,

    // Address Components
    String? house,
    String? street,
    String? city,
    String? state,
    String? zipCode,
    String? country,
    String? countryCode,
    String? landmark,

    // Geolocation
    double? latitude,
    double? longitude,
    double? accuracy,
    String? geoHash,

    // Validation & Status
    bool? isVerified,
    bool? isPrimary,
    String? validationStatus,

    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}

extension AddressModelApiExtensions on AddressModel {
  /// Converts the model to a JSON map suitable for API consumption,
  /// removing null values and empty strings that cause DB crashes.
  Map<String, dynamic> toApiJson() {
    final Map<String, dynamic> data = toJson();

    // Remove keys where value is null or an empty string
    data.removeWhere((key, value) {
      if (value == null) return true;
      if (value is String && value.trim().isEmpty) return true;
      return false;
    });

    // CRITICAL: Ensure 'id' is removed if it's 0 or null
    // so the backend generates a new one.
    if (data['id'] == 0 || data['id'] == null) {
      data.remove('id');
    }

    return data;
  }
}

// ======== Extension for additional functionality.
extension AddressModelExtensions on AddressModel {
  /// ======== Returns a formatted address string.
  String get formattedAddress {
    final components = [
      if (house != null && house!.isNotEmpty) house,
      if (street != null && street!.isNotEmpty) street,
      if (city != null && city!.isNotEmpty) city,
      if (state != null && state!.isNotEmpty) state,
      if (zipCode != null && zipCode!.isNotEmpty) zipCode,
      if (country != null && country!.isNotEmpty) country,
    ].where((component) => component != null).cast<String>();

    return components.isEmpty ? 'N/A' : components.join(', ');
  }

  /// ======== Returns a short formatted address (city, state, zipCode).
  String get shortAddress {
    final components = [
      if (city != null && city!.isNotEmpty) city,
      if (state != null && state!.isNotEmpty) state,
      if (zipCode != null && zipCode!.isNotEmpty) zipCode,
    ].where((component) => component != null).cast<String>();

    return components.join(', ');
  }

  /// ======== Returns address for maps (street, city, state).
  String get mapAddress {
    final components = [
      if (street != null && street!.isNotEmpty) street,
      if (city != null && city!.isNotEmpty) city,
      if (state != null && state!.isNotEmpty) state,
    ].where((component) => component != null).cast<String>();

    return components.join(', ');
  }

  /// ======== Checks if the address has valid geolocation coordinates.
  bool get hasValidCoordinates =>
      latitude != null &&
      longitude != null &&
      latitude! >= -90 &&
      latitude! <= 90 &&
      longitude! >= -180 &&
      longitude! <= 180;

  /// ======== Returns coordinates as a string for display.
  String get coordinatesString =>
      hasValidCoordinates ? '${latitude!.toStringAsFixed(6)}, ${longitude!.toStringAsFixed(6)}' : 'No coordinates';

  /// ======== Creates a copy with updated timestamp.
  AddressModel copyWithUpdatedTimestamp() => copyWith(updatedAt: DateTime.now());

  /// ======== Validates if the address has minimum required fields.
  bool validateMinimumAddress() {
    return (street != null && street!.isNotEmpty) &&
        (city != null && city!.isNotEmpty) &&
        (zipCode != null && zipCode!.isNotEmpty);
  }

  /// ======== Returns address type with fallback.
  String get typeWithFallback => type ?? 'other';

  /// ======== Checks if address is valid for shipping.
  bool get isValidForShipping => validateMinimumAddress() && (isVerified ?? false) && hasValidCoordinates;

  /// ======== Returns address summary for lists.
  String get summary {
    if (label != null && label!.isNotEmpty) {
      return '$label - $shortAddress';
    }
    return formattedAddress;
  }
}
