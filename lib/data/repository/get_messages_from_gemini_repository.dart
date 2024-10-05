import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

import '../failure.dart';

abstract class GetMessagesFromGeminiRepository {
  Future<Either<Failure, GenerateContentResponse>> getMessage(String prompt);
}
