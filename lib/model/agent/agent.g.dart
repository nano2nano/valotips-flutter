// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Agent _$$_AgentFromJson(Map<String, dynamic> json) => _$_Agent(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      description: json['description'] as String,
      developerName: json['developerName'] as String,
      dispalyIcon: json['dispalyIcon'] as String?,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Ability.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AgentToJson(_$_Agent instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'description': instance.description,
      'developerName': instance.developerName,
      'dispalyIcon': instance.dispalyIcon,
      'abilities': instance.abilities,
    };
