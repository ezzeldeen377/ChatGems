import 'package:chat_app/data/Failure.dart';
import 'package:dartz/dartz.dart';

import '../failure.dart';

abstract class GetMessagesFromGeminiRepository {
  Future<Either<Failure, String>> getMessage(String prompt);
}
