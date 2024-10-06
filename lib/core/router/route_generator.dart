import 'package:chat_app/core/router/routes.dart';
import 'package:chat_app/data/di/di.dart';
import 'package:chat_app/features/all_chats_screen/ui/all_chats_screen.dart';
import 'package:chat_app/features/chat_screen/ui/chat_screen.dart';
import 'package:chat_app/features/chat_screen/ui/cubit/chat_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  static Route<dynamic> OnGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.allChatsScreen:
        return MaterialPageRoute(builder: (_) => AllChatsScreen());
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<ChatScreenCubit>(
            create: (context) => getIt<ChatScreenCubit>(),
            child: ChatScreen(),
          ),
        );
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(" No Route Found"),
        ),
        body: const Center(
          child: Text(" No Route Found"),
        ),
      );
    });
  }
}
