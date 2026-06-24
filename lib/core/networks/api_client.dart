import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../constants/api_constant.dart';


class ApiClient {

  static final Dio dio = Dio(

    BaseOptions(

      baseUrl: ApiConstants.baseUrl,

      headers: {

        "Authorization":
        "Bearer ${dotenv.env["OPENAI_API_KEY"]}",

        "Content-Type": "application/json",

      },

    ),

  );

}