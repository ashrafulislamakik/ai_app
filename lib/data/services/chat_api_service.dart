import 'package:dio/dio.dart';

import '../../core/networks/api_client.dart';



class ChatApiService {

  Future<String> sendMessage(String prompt) async {

    final Response response = await ApiClient.dio.post(

      "/responses",

      data: {

        "model": "gpt-4.1-mini",

        "input": prompt

      },

    );

    return response.data["output"][0]["content"][0]["text"];

  }

}