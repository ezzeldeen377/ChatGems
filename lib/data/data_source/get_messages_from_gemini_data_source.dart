import 'package:chat_app/data/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

abstract class GetMessagesFromGeminiDataSource {
  Future<Either<Failure, GenerateContentResponse>> getMessage(String prompt);
}
