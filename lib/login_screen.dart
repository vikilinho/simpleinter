// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import './generated/ locale_keys.g.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isvisible = true;
  bool isvisible1 = false;
  bool isvisible2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.login.tr()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: LocaleKeys.username.tr(),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: LocaleKeys.password.tr(),
            ),
          ),
          ElevatedButton(
            child: Text(LocaleKeys.login.tr()),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                child: Text('English'),
                onPressed: () async {
                  isvisible = false;
                  await context.setLocale(Locale("en"));
                },
              ),
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('Spanish'),
                onPressed: () async {
                  isvisible = false;
                  await context.setLocale(Locale("es"));
                },
              ),
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('German'),
                onPressed: () async {
                  isvisible = false;
                  await context.setLocale(Locale("de"));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
