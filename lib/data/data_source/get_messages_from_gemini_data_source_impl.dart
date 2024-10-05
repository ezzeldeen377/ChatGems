import 'package:chat_app/core/config/constant_manager.dart';
import 'package:chat_app/data/data_source/get_messages_from_gemini_data_source.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';

import '../failure.dart';

@Injectable(as: GetMessagesFromGeminiDataSource)
class GetMessagesFromGeminiDataSourceImpl
    implements GetMessagesFromGeminiDataSource {
  @override
  Future<Either<Failure, GenerateContentResponse>> getMessage(
      String prompt) async {
    // TODO: implement getMessage
    try {
      var check = await Connectivity().checkConnectivity();
      if (check.contains(ConnectivityResult.mobile) ||
          check.contains(ConnectivityResult.wifi)) {
        final model = GenerativeModel(
            model: "gemini-1.5-flash", apiKey: ApiConstant.apiKey);

        final response = await model.generateContent([
          Content.text(prompt),
        ]);
        return Right(response);
      } else {
        return Left(Failure(
            errorMessage: 'No internet connection please your network'));
      }
    } catch (e) {
      return Left(Failure(errorMessage: e.toString()));
    }
  }
}
