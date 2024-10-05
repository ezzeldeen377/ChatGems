import 'package:chat_app/data/Failure.dart';
import 'package:chat_app/data/data_source/get_messages_from_gemini_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failure.dart';

@Injectable(as: GetMessagesFromGeminiDataSource)
class GetMessagesFromGeminiDataSourceImpl
    implements GetMessagesFromGeminiDataSource {
  @override
  Future<Either<Failure, String>> getMessage(String prompt) {
    // TODO: implement getMessage
    throw UnimplementedError();
  }
}
