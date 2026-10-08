// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhoneModel _$PhoneModelFromJson(Map<String, dynamic> json) => _PhoneModel(
  id: json['id'] as String,
  countryCode: json['countryCode'] as String? ?? '+88',
  countryISO: json['countryISO'] as String? ?? 'BD',
  phone: json['phone'] as String?,
  isPrimary: json['isPrimary'] as bool?,
);

Map<String, dynamic> _$PhoneModelToJson(_PhoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'countryISO': instance.countryISO,
      'phone': instance.phone,
      'isPrimary': instance.isPrimary,
    };
