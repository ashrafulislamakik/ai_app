import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/image_provider.dart';

class ImageGeneratorScreen extends StatefulWidget {
  const ImageGeneratorScreen({super.key});

  @override
  State<ImageGeneratorScreen> createState() => _ImageGeneratorScreenState();
}

class _ImageGeneratorScreenState extends State<ImageGeneratorScreen> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<AIImageProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Image Generator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: "Describe image...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  provider.generate(controller.text);
                }
              },
              child: const Text("Generate"),
            ),
            const SizedBox(height: 20),

            if (provider.loading)
              const CircularProgressIndicator()
            else if (provider.image != null)
              Expanded(
                child: InteractiveViewer(
                  child: Image.memory(
                    provider.image!,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            else
              const Text("No image generated yet"),
          ],
        ),
      ),
    );
  }
}