import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_model.freezed.dart';
part 'phone_model.g.dart';

@freezed
abstract class PhoneModel with _$PhoneModel {
  factory PhoneModel({
    required String id,
    @Default('+88') String countryCode,
    @Default('BD') String countryISO,
    String? phone,
    bool? isPrimary,
  }) = _PhoneModel;

  factory PhoneModel.fromJson(Map<String, dynamic> json) => _$PhoneModelFromJson(json);
}
