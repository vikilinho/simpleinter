// ignore_for_file: prefer_const_constructors

import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:simpleinter/generated/%20locale_keys.g.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.logintitle.tr()),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                ),
              ),
              ElevatedButton(
                child: Text('Signup'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
            ],
          ),
        ));
  }
}
