import 'package:flutter/material.dart';
import 'package:udacity_clone/screens/academico_screen.dart';
import 'package:udacity_clone/screens/authentication_screen.dart';
import 'package:udacity_clone/screens/biblioteca_screen.dart';
import 'package:udacity_clone/screens/eventos_screen.dart';
import 'package:udacity_clone/screens/financeiro_screen.dart';
import 'package:udacity_clone/screens/home_screen.dart';
import 'package:udacity_clone/screens/seguranca_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Institucional',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        AuthenticationScreen.routeName: (ctx) => AuthenticationScreen(),
        AcademicoScreen.routeName: (ctx) => AcademicoScreen(),
        SegurancaScreen.routeName: (ctx) => SegurancaScreen(),
        BibliotecaScreen.routeName: (ctx) => BibliotecaScreen(),
        FinanceiroScreen.routeName: (ctx) => FinanceiroScreen(),
        EventosScreen.routeName: (ctx) => EventosScreen(),
        //
      },
    );
  }
}
