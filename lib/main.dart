import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:standard_model/views/home_page.dart';
import 'package:standard_model/welcome.dart';

import 'router/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);


  final _appRouter = AppRouter(welcomeGuard: WelcomeGuard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      title: 'Particle',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.red),
        primaryColor: Colors.amber,
      ),


      darkTheme: ThemeData.dark(

      ),
      themeMode: ThemeMode.dark,
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}


