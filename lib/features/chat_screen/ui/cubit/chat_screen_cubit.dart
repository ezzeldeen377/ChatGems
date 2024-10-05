import 'package:chat_app/data/repository/get_messages_from_gemini_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'chat_screen_state.dart';

@injectable
class ChatScreenCubit extends Cubit<ChatScreenState> {
  ChatScreenCubit({required this.repository}) : super(ChatScreenInitial());
  GetMessagesFromGeminiRepository repository;
}
