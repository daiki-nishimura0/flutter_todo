import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo.freezed.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    required String id,
    required String title
 }) = _TodoState;
}