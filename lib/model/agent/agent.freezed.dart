// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return _Agent.fromJson(json);
}

/// @nodoc
mixin _$Agent {
  String get uuid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get developerName => throw _privateConstructorUsedError;
  String? get dispalyIcon => throw _privateConstructorUsedError;
  List<Ability> get abilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentCopyWith<Agent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentCopyWith<$Res> {
  factory $AgentCopyWith(Agent value, $Res Function(Agent) then) =
      _$AgentCopyWithImpl<$Res, Agent>;
  @useResult
  $Res call(
      {String uuid,
      String displayName,
      String description,
      String developerName,
      String? dispalyIcon,
      List<Ability> abilities});
}

/// @nodoc
class _$AgentCopyWithImpl<$Res, $Val extends Agent>
    implements $AgentCopyWith<$Res> {
  _$AgentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? displayName = null,
    Object? description = null,
    Object? developerName = null,
    Object? dispalyIcon = freezed,
    Object? abilities = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      developerName: null == developerName
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String,
      dispalyIcon: freezed == dispalyIcon
          ? _value.dispalyIcon
          : dispalyIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AgentCopyWith<$Res> implements $AgentCopyWith<$Res> {
  factory _$$_AgentCopyWith(_$_Agent value, $Res Function(_$_Agent) then) =
      __$$_AgentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String displayName,
      String description,
      String developerName,
      String? dispalyIcon,
      List<Ability> abilities});
}

/// @nodoc
class __$$_AgentCopyWithImpl<$Res> extends _$AgentCopyWithImpl<$Res, _$_Agent>
    implements _$$_AgentCopyWith<$Res> {
  __$$_AgentCopyWithImpl(_$_Agent _value, $Res Function(_$_Agent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? displayName = null,
    Object? description = null,
    Object? developerName = null,
    Object? dispalyIcon = freezed,
    Object? abilities = null,
  }) {
    return _then(_$_Agent(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      developerName: null == developerName
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String,
      dispalyIcon: freezed == dispalyIcon
          ? _value.dispalyIcon
          : dispalyIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<Ability>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Agent implements _Agent {
  const _$_Agent(
      {required this.uuid,
      required this.displayName,
      required this.description,
      required this.developerName,
      required this.dispalyIcon,
      required final List<Ability> abilities})
      : _abilities = abilities;

  factory _$_Agent.fromJson(Map<String, dynamic> json) =>
      _$$_AgentFromJson(json);

  @override
  final String uuid;
  @override
  final String displayName;
  @override
  final String description;
  @override
  final String developerName;
  @override
  final String? dispalyIcon;
  final List<Ability> _abilities;
  @override
  List<Ability> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  String toString() {
    return 'Agent(uuid: $uuid, displayName: $displayName, description: $description, developerName: $developerName, dispalyIcon: $dispalyIcon, abilities: $abilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Agent &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.developerName, developerName) ||
                other.developerName == developerName) &&
            (identical(other.dispalyIcon, dispalyIcon) ||
                other.dispalyIcon == dispalyIcon) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      displayName,
      description,
      developerName,
      dispalyIcon,
      const DeepCollectionEquality().hash(_abilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      __$$_AgentCopyWithImpl<_$_Agent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AgentToJson(
      this,
    );
  }
}

abstract class _Agent implements Agent {
  const factory _Agent(
      {required final String uuid,
      required final String displayName,
      required final String description,
      required final String developerName,
      required final String? dispalyIcon,
      required final List<Ability> abilities}) = _$_Agent;

  factory _Agent.fromJson(Map<String, dynamic> json) = _$_Agent.fromJson;

  @override
  String get uuid;
  @override
  String get displayName;
  @override
  String get description;
  @override
  String get developerName;
  @override
  String? get dispalyIcon;
  @override
  List<Ability> get abilities;
  @override
  @JsonKey(ignore: true)
  _$$_AgentCopyWith<_$_Agent> get copyWith =>
      throw _privateConstructorUsedError;
}
