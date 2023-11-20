// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rent_car_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RentCarResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  double get pricePerDay => throw _privateConstructorUsedError;
  List<int> get categoryIds => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RentCarResponseModelCopyWith<RentCarResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentCarResponseModelCopyWith<$Res> {
  factory $RentCarResponseModelCopyWith(RentCarResponseModel value,
          $Res Function(RentCarResponseModel) then) =
      _$RentCarResponseModelCopyWithImpl<$Res, RentCarResponseModel>;
  @useResult
  $Res call(
      {int id,
      String displayName,
      double pricePerDay,
      List<int> categoryIds,
      String overview,
      double rating,
      String img,
      LatLng location});
}

/// @nodoc
class _$RentCarResponseModelCopyWithImpl<$Res,
        $Val extends RentCarResponseModel>
    implements $RentCarResponseModelCopyWith<$Res> {
  _$RentCarResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? pricePerDay = null,
    Object? categoryIds = null,
    Object? overview = null,
    Object? rating = null,
    Object? img = null,
    Object? location = null,
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
      pricePerDay: null == pricePerDay
          ? _value.pricePerDay
          : pricePerDay // ignore: cast_nullable_to_non_nullable
              as double,
      categoryIds: null == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentCarResponseModelImplCopyWith<$Res>
    implements $RentCarResponseModelCopyWith<$Res> {
  factory _$$RentCarResponseModelImplCopyWith(_$RentCarResponseModelImpl value,
          $Res Function(_$RentCarResponseModelImpl) then) =
      __$$RentCarResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String displayName,
      double pricePerDay,
      List<int> categoryIds,
      String overview,
      double rating,
      String img,
      LatLng location});
}

/// @nodoc
class __$$RentCarResponseModelImplCopyWithImpl<$Res>
    extends _$RentCarResponseModelCopyWithImpl<$Res, _$RentCarResponseModelImpl>
    implements _$$RentCarResponseModelImplCopyWith<$Res> {
  __$$RentCarResponseModelImplCopyWithImpl(_$RentCarResponseModelImpl _value,
      $Res Function(_$RentCarResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? pricePerDay = null,
    Object? categoryIds = null,
    Object? overview = null,
    Object? rating = null,
    Object? img = null,
    Object? location = null,
  }) {
    return _then(_$RentCarResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerDay: null == pricePerDay
          ? _value.pricePerDay
          : pricePerDay // ignore: cast_nullable_to_non_nullable
              as double,
      categoryIds: null == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$RentCarResponseModelImpl extends _RentCarResponseModel {
  const _$RentCarResponseModelImpl(
      {required this.id,
      required this.displayName,
      required this.pricePerDay,
      required final List<int> categoryIds,
      required this.overview,
      required this.rating,
      required this.img,
      required this.location})
      : _categoryIds = categoryIds,
        super._();

  @override
  final int id;
  @override
  final String displayName;
  @override
  final double pricePerDay;
  final List<int> _categoryIds;
  @override
  List<int> get categoryIds {
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIds);
  }

  @override
  final String overview;
  @override
  final double rating;
  @override
  final String img;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'RentCarResponseModel(id: $id, displayName: $displayName, pricePerDay: $pricePerDay, categoryIds: $categoryIds, overview: $overview, rating: $rating, img: $img, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentCarResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.pricePerDay, pricePerDay) ||
                other.pricePerDay == pricePerDay) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      displayName,
      pricePerDay,
      const DeepCollectionEquality().hash(_categoryIds),
      overview,
      rating,
      img,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentCarResponseModelImplCopyWith<_$RentCarResponseModelImpl>
      get copyWith =>
          __$$RentCarResponseModelImplCopyWithImpl<_$RentCarResponseModelImpl>(
              this, _$identity);
}

abstract class _RentCarResponseModel extends RentCarResponseModel {
  const factory _RentCarResponseModel(
      {required final int id,
      required final String displayName,
      required final double pricePerDay,
      required final List<int> categoryIds,
      required final String overview,
      required final double rating,
      required final String img,
      required final LatLng location}) = _$RentCarResponseModelImpl;
  const _RentCarResponseModel._() : super._();

  @override
  int get id;
  @override
  String get displayName;
  @override
  double get pricePerDay;
  @override
  List<int> get categoryIds;
  @override
  String get overview;
  @override
  double get rating;
  @override
  String get img;
  @override
  LatLng get location;
  @override
  @JsonKey(ignore: true)
  _$$RentCarResponseModelImplCopyWith<_$RentCarResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
