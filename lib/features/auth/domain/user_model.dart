import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_model.dart';
import 'permission_model.dart';
import 'phone_model.dart';
import 'role_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    String? fullName,
    @Default([]) List<RoleModel> roles,
    String? email,
    @Default([]) List<PhoneModel> phones,
    @Default([]) List<AddressModel> addresses,
    DateTime? dateOfBirth,
    String? details,
    @Default([]) List<PermissionModel> permissions,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
