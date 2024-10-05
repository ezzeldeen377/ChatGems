import 'package:chat_app/data/data_source/get_messages_from_gemini_data_source.dart';
import 'package:chat_app/data/repository/get_messages_from_gemini_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

import '../failure.dart';

@Injectable(as: GetMessagesFromGeminiRepository)
class GetMessagesFromGeminiRepositoryImpl
    implements GetMessagesFromGeminiRepository {
  GetMessagesFromGeminiDataSource dataSource;
  GetMessagesFromGeminiRepositoryImpl({required this.dataSource});
  @override
  Future<Either<Failure, GenerateContentResponse>> getMessage(String prompt) {
    // TODO: implement getMessage
    return dataSource.getMessage(prompt);
  }
}
