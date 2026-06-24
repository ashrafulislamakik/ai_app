import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../data/repository/ai_repository.dart';

class ImageProvider extends ChangeNotifier {

  final AIRepository repository = AIRepository();

  Uint8List? image;

  bool loading = false;

  Future<void> generate(String prompt) async {

    if(prompt.trim().isEmpty) return;

    loading = true;

    notifyListeners();

    try{

      image = (await repository.generateImage(prompt)) as Uint8List?;

    }catch(e){

      image = null;

    }

    loading = false;

    notifyListeners();

  }

}