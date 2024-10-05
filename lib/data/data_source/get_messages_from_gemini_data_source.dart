import 'package:chat_app/data/Failure.dart';
import 'package:dartz/dartz.dart';

import '../failure.dart';

abstract class GetMessagesFromGeminiDataSource {
  Future<Either<Failure, String>> getMessage(String prompt);
}
