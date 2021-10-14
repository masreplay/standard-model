
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:standard_model/router/app_router.gr.dart';

enum HomePageViewType {
  list,
  grid,
  circular,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: AutoTabsRouter(
        routes: [
          ParticleListRoute(),
          ParticleGridRoute(),
        ],
        builder: (context, child, animation) {
          final tabsRouter = AutoTabsRouter.of(context);

          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(child: child),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          tabsRouter.setActiveIndex(0);
                        },
                        child: Text("list"),
                      ),
                      TextButton(
                        onPressed: () {
                          tabsRouter.setActiveIndex(1);
                        },
                        child: Text("grid"),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

