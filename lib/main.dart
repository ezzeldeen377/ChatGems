import 'dart:io';

import 'package:chat_app/data/di/di.dart';
import 'package:chat_app/features/chat_screen/ui/chat_screen.dart';
import 'package:chat_app/features/chat_screen/ui/cubit/chat_screen_cubit.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<ChatScreenCubit>(
        create: (context) => getIt<ChatScreenCubit>(),
        child: ChatScreen(),
      ),
    );
  }
}
