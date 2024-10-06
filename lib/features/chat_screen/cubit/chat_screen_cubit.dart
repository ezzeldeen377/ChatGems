import 'package:chat_app/data/models/messages_model.dart';
import 'package:chat_app/data/repository/get_messages_from_gemini_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

part 'chat_screen_state.dart';

@injectable
class ChatScreenCubit extends Cubit<ChatScreenState> {
  ChatScreenCubit({required this.repository}) : super(ChatScreenInitial());
  GetMessagesFromGeminiRepository repository;

  final TextEditingController controller = TextEditingController();

  List<MessagesModel> chats = [];

  static ChatScreenCubit get(BuildContext context) =>
      BlocProvider.of<ChatScreenCubit>(context);
  void getMessage() async {
    String prompt = controller.text;
    controller.clear();

    chats.add(MessagesModel(message: prompt, state: 'send'));
    chats.add(MessagesModel(message: 'typing...', state: 'recived'));
    emit(ChatScreenLoading());
    var response = await repository.getMessage(prompt);
    response.fold((error) {
      print(error.errorMessage);
      emit(ChatScreenError(errorMessage: error.errorMessage));
    }, (response) {
      chats.last.message = response.text!;
      emit(ChatScreenSuccess(anwser: response));
    });
  }
}
