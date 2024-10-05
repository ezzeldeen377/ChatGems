part of 'chat_screen_cubit.dart';

@immutable
sealed class ChatScreenState {}

final class ChatScreenInitial extends ChatScreenState {}

final class ChatScreenLoading extends ChatScreenState {}

final class ChatScreenError extends ChatScreenState {
  String errorMessage;
  ChatScreenError({required this.errorMessage});
}

final class ChatScreenSuccess extends ChatScreenState {
  GenerateContentResponse anwser;
  ChatScreenSuccess({required this.anwser});
}
