import 'package:flutter/material.dart';
import 'package:imkon_exam/core/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0XFF000000),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0XFF000000),
          ),
          bottomAppBarTheme: BottomAppBarTheme(color: Color(0xFF000000))),
      initialRoute: '/',
      onGenerateRoute: (settings)=> RouterGenerator.generalRoute(settings),
    );
  }
}
