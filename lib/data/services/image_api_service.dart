import 'dart:convert';
import 'dart:typed_data';

import '../../core/networks/api_client.dart';

class ImageApiService {
  Future<Uint8List> generateImage(String prompt) async {
    final response = await ApiClient.dio.post(
      "/images/generations",
      data: {
        "model": "gpt-image-1",
        "prompt": prompt,
        "size": "1024x1024",
      },
    );

    final base64Image = response.data["data"][0]["b64_json"];

    return base64Decode(base64Image);
  }
}