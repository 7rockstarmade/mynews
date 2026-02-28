// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsResponseDto {

 String get status; int get totalResults; List<ArticleDto> get articles;
/// Create a copy of NewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsResponseDtoCopyWith<NewsResponseDto> get copyWith => _$NewsResponseDtoCopyWithImpl<NewsResponseDto>(this as NewsResponseDto, _$identity);

  /// Serializes this NewsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other.articles, articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(articles));

@override
String toString() {
  return 'NewsResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class $NewsResponseDtoCopyWith<$Res>  {
  factory $NewsResponseDtoCopyWith(NewsResponseDto value, $Res Function(NewsResponseDto) _then) = _$NewsResponseDtoCopyWithImpl;
@useResult
$Res call({
 String status, int totalResults, List<ArticleDto> articles
});




}
/// @nodoc
class _$NewsResponseDtoCopyWithImpl<$Res>
    implements $NewsResponseDtoCopyWith<$Res> {
  _$NewsResponseDtoCopyWithImpl(this._self, this._then);

  final NewsResponseDto _self;
  final $Res Function(NewsResponseDto) _then;

/// Create a copy of NewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? totalResults = null,Object? articles = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,articles: null == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsResponseDto].
extension NewsResponseDtoPatterns on NewsResponseDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsResponseDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _NewsResponseDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _NewsResponseDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int totalResults,  List<ArticleDto> articles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsResponseDto() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int totalResults,  List<ArticleDto> articles)  $default,) {final _that = this;
switch (_that) {
case _NewsResponseDto():
return $default(_that.status,_that.totalResults,_that.articles);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int totalResults,  List<ArticleDto> articles)?  $default,) {final _that = this;
switch (_that) {
case _NewsResponseDto() when $default != null:
return $default(_that.status,_that.totalResults,_that.articles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsResponseDto implements NewsResponseDto {
  const _NewsResponseDto({required this.status, required this.totalResults, required final  List<ArticleDto> articles}): _articles = articles;
  factory _NewsResponseDto.fromJson(Map<String, dynamic> json) => _$NewsResponseDtoFromJson(json);

@override final  String status;
@override final  int totalResults;
 final  List<ArticleDto> _articles;
@override List<ArticleDto> get articles {
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_articles);
}


/// Create a copy of NewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsResponseDtoCopyWith<_NewsResponseDto> get copyWith => __$NewsResponseDtoCopyWithImpl<_NewsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults)&&const DeepCollectionEquality().equals(other._articles, _articles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,totalResults,const DeepCollectionEquality().hash(_articles));

@override
String toString() {
  return 'NewsResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
}


}

/// @nodoc
abstract mixin class _$NewsResponseDtoCopyWith<$Res> implements $NewsResponseDtoCopyWith<$Res> {
  factory _$NewsResponseDtoCopyWith(_NewsResponseDto value, $Res Function(_NewsResponseDto) _then) = __$NewsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String status, int totalResults, List<ArticleDto> articles
});




}
/// @nodoc
class __$NewsResponseDtoCopyWithImpl<$Res>
    implements _$NewsResponseDtoCopyWith<$Res> {
  __$NewsResponseDtoCopyWithImpl(this._self, this._then);

  final _NewsResponseDto _self;
  final $Res Function(_NewsResponseDto) _then;

/// Create a copy of NewsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? totalResults = null,Object? articles = null,}) {
  return _then(_NewsResponseDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,articles: null == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<ArticleDto>,
  ));
}


}

// dart format on
