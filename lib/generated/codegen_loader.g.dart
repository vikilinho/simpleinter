// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de = {
  "Anmeldetitel": "Anmeldung",
  "registrieren": "Registrieren",
  "benutzername": "Benutzername",
  "passwort": "Passwort",
  "login": "Einloggen"
};
static const Map<String,dynamic> en = {
  "logintitle": "Login",
  "signuptitle": "Signup",
  "username": "Username",
  "password": "Password",
  "login": "Login"
};
static const Map<String,dynamic> es = {
  "accesotitulo": "Acceso",
  "Registrarsetitulo": "Registrarse",
  "username": "Nombre de usuario",
  "password": "Contraseña",
  "login": "Iniciar sesión"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": de, "en": en, "es": es};
}
