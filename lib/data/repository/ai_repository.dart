import 'dart:typed_data';

import '../services/chat_api_service.dart';
import '../services/image_api_service.dart';

class AIRepository {
  final ChatApiService _chatApi = ChatApiService();
  final ImageApiService _imageApi = ImageApiService();

  Future<String> sendMessage(String text) {
    return _chatApi.sendMessage(text);
  }

  Future<Uint8List> generateImage(String prompt) {
    return _imageApi.generateImage(prompt);
  }
}