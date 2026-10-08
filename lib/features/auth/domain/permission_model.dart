import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_model.freezed.dart';
part 'permission_model.g.dart';

@freezed
abstract class PermissionModel with _$PermissionModel {
  factory PermissionModel({
    required String id,
    @Default('') String name,
    @Default('') String resource,
    @Default(false) bool isActive,
    @Default('') String action,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, dynamic> json) => _$PermissionModelFromJson(json);
}

/// `resource:action` - the single form every guard, provider and route compares.
///
/// An extension rather than a field on the freezed class, so it needs no code
/// generation and stays out of the JSON payload.
extension PermissionModelX on PermissionModel {
  String get key => '$resource:$action';
}

extension PermissionModelListX on Iterable<PermissionModel> {
  Set<String> get keys => {for (final permission in this) permission.key};
}
