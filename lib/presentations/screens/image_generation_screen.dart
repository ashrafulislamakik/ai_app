import 'package:flutter/material.dart';

class ImageGeneratorScreen extends StatelessWidget {
  const ImageGeneratorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWeb = MediaQuery.of(context).size.width > 700;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Generator"),
      ),
      body: Center(
        child: SizedBox(
          width: isWeb ? 600 : double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [

                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: "Describe your image...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Generate Image",
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade900,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}