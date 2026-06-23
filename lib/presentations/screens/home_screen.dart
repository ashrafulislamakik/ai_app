import 'package:flutter/material.dart';
import 'chat_screen.dart';
import 'image_generation_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWeb = MediaQuery.of(context).size.width > 700;

    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Assistant"),
      ),
      body: Center(
        child: SizedBox(
          width: isWeb ? 500 : double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                _menuCard(
                  context,
                  title: "AI Chat",
                  icon: Icons.chat,
                  page: const ChatScreen(),
                ),

                const SizedBox(height: 20),

                _menuCard(
                  context,
                  title: "AI Image Generator",
                  icon: Icons.image,
                  page: const ImageGeneratorScreen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _menuCard(
      BuildContext context, {
        required String title,
        required IconData icon,
        required Widget page,
      }) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          child: Row(
            children: [
              Icon(icon, size: 45),
              const SizedBox(width: 20),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}