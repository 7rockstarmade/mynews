import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_dto.freezed.dart';
part 'source_dto.g.dart';

@freezed
abstract class SourceDto with _$SourceDto {
  const factory SourceDto({String? id, required String name}) = _SourceDto;

  factory SourceDto.fromJson(Map<String, dynamic> json) =>
      _$SourceDtoFromJson(json);
}
