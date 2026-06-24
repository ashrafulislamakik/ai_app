import 'package:ai_app/presentations/providers/chat_provider.dart';
import 'package:ai_app/presentations/providers/image_provider.dart';
import 'package:ai_app/presentations/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'core/utils/app_theme.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();


  await dotenv.load(fileName: "assets/.env");
  print(dotenv.env["OPENAI_API_KEY"]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
        ChangeNotifierProvider(create: (_) => AIImageProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: const SplashScreen(),
      ),
    );
  }
}