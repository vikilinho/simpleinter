// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simpleinter/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import './generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        // ignore: prefer_const_literals_to_create_immutables
        supportedLocales: [
          Locale('en'),
          Locale('de'),
          Locale('es'),
        ],
        path: 'assets/translations/',
        fallbackLocale: Locale("en"),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
