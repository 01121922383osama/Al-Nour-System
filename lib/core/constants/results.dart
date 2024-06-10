import 'package:freezed_annotation/freezed_annotation.dart';

part 'results.freezed.dart';

@Freezed()
abstract class Results<T> with _$Results<T> {
  const factory Results.success(T data) = Success<T>;
  const factory Results.failure(String message) = Failure<T>;
}
