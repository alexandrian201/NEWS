import 'package:flutter/material.dart';
import 'package:news_app/homePage.dart';

// import 'package:dio/dio.dart';

Future<void> main() async {
  // مهم جدًا: تضمن تحميل Widgets قبل أي Plugin
  WidgetsFlutterBinding.ensureInitialized();

  // تأخير بسيط علشان كل plugins تلحق تسجّل الـ listeners
  await Future.delayed(const Duration(milliseconds: 100));

  // لو عندك Firebase فعل السطر ده:
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}
