// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorie_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryResponseModelCopyWith<CategoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseModelCopyWith<$Res> {
  factory $CategoryResponseModelCopyWith(CategoryResponseModel value,
          $Res Function(CategoryResponseModel) then) =
      _$CategoryResponseModelCopyWithImpl<$Res, CategoryResponseModel>;
  @useResult
  $Res call({int id, String displayName, String category, String? img});
}

/// @nodoc
class _$CategoryResponseModelCopyWithImpl<$Res,
        $Val extends CategoryResponseModel>
    implements $CategoryResponseModelCopyWith<$Res> {
  _$CategoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? category = null,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseModelImplCopyWith<$Res>
    implements $CategoryResponseModelCopyWith<$Res> {
  factory _$$CategoryResponseModelImplCopyWith(
          _$CategoryResponseModelImpl value,
          $Res Function(_$CategoryResponseModelImpl) then) =
      __$$CategoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String displayName, String category, String? img});
}

/// @nodoc
class __$$CategoryResponseModelImplCopyWithImpl<$Res>
    extends _$CategoryResponseModelCopyWithImpl<$Res,
        _$CategoryResponseModelImpl>
    implements _$$CategoryResponseModelImplCopyWith<$Res> {
  __$$CategoryResponseModelImplCopyWithImpl(_$CategoryResponseModelImpl _value,
      $Res Function(_$CategoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? category = null,
    Object? img = freezed,
  }) {
    return _then(_$CategoryResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoryResponseModelImpl extends _CategoryResponseModel {
  const _$CategoryResponseModelImpl(
      {required this.id,
      required this.displayName,
      required this.category,
      this.img})
      : super._();

  @override
  final int id;
  @override
  final String displayName;
  @override
  final String category;
  @override
  final String? img;

  @override
  String toString() {
    return 'CategoryResponseModel(id: $id, displayName: $displayName, category: $category, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, category, img);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseModelImplCopyWith<_$CategoryResponseModelImpl>
      get copyWith => __$$CategoryResponseModelImplCopyWithImpl<
          _$CategoryResponseModelImpl>(this, _$identity);
}

abstract class _CategoryResponseModel extends CategoryResponseModel {
  const factory _CategoryResponseModel(
      {required final int id,
      required final String displayName,
      required final String category,
      final String? img}) = _$CategoryResponseModelImpl;
  const _CategoryResponseModel._() : super._();

  @override
  int get id;
  @override
  String get displayName;
  @override
  String get category;
  @override
  String? get img;
  @override
  @JsonKey(ignore: true)
  _$$CategoryResponseModelImplCopyWith<_$CategoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
