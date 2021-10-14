import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'router/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter(/*welcomeGuard: WelcomeGuard()*/);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Standard Model particle ',
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      routerDelegate: AutoRouterDelegate(_appRouter),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
