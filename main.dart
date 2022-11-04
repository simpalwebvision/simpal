import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter E-Commerce',
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.cyan[400]),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            brightness: Brightness.dark,
            secondary: Colors.deepOrange[200],
            primary: Colors.cyan[400],
          ),
        ),
        home: const RegisterPage());
  }
}
