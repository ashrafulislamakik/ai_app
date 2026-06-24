import 'package:flutter/material.dart';
import '../../data/models/chat_message_model.dart';
import '../../data/repository/ai_repository.dart';

class ChatProvider extends ChangeNotifier {

  final AIRepository repository = AIRepository();

  final List<ChatMessageModel> messages=[];

  bool isLoading=false;

  Future<void> sendMessage(String text) async{

    if(text.trim().isEmpty)return;

    messages.add(
      ChatMessageModel(
        text: text,
        isUser: true,
      ),
    );

    isLoading=true;

    notifyListeners();

    try{

      final reply=
      await repository.sendMessage(text);

      messages.add(
        ChatMessageModel(
          text: reply,
          isUser: false,
        ),
      );

    }catch(e){

      messages.add(
        ChatMessageModel(
          text: e.toString(),
          isUser: false,
        ),
      );

    }

    isLoading=false;

    notifyListeners();

  }

}