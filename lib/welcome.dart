import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:standard_model/router/app_router.gr.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool isWelcome = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "WELCOME",
              style: Theme.of(context).textTheme.headline3,
            ),
            SwitchListTile(
              value: isWelcome,
              onChanged: (value) {
                setState(() {
                  isWelcome = !isWelcome;
                  _toggleWelcome();
                });
              },
            )
          ],
        ),
      ),
    );
  }

  _toggleWelcome() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isWelcome', isWelcome);
  }
}

class WelcomeGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation
    var shared = (await SharedPreferences.getInstance());
    if (shared.getBool("isWelcome") ?? false) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.replace(WelcomeRoute());
    }
  }
}
