import 'package:ai_app/presentations/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/utils/app_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(

      providers: [

        ChangeNotifierProvider(create: (_) => ChatProvider()),

        ChangeNotifierProvider(create: (_) => ImageProvider()),

      ],

      child: MaterialApp(

        debugShowCheckedModeBanner: false,

        theme: AppTheme.darkTheme,

        home: const SplashScreen(),

      ),
    );
  }
}