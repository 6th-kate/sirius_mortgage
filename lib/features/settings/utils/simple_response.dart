import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_response.freezed.dart';
@freezed
abstract class SimpleResponse<T> with _$SimpleResponse {
  const factory SimpleResponse.ok({required T? payload}) = _SimpleOkResponse<T>;
  const factory SimpleResponse.error({required String message, required T? payload}) = _SimpleErrorResponse<T>;
}
