import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minichat/firebase_options.dart';
import 'package:minichat/pages/register_page.dart';
import 'package:minichat/themes/light_mode.dart';
import 'auth/login_or_register.dart';
import 'pages/login_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
    );
  }
}
