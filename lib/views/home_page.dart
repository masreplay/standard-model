import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
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
  HomePageViewType viewType =
      HomePageViewType.values[Random().nextInt(HomePageViewType.values.length)];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: AutoTabsRouter(
        // list of your tab routes
        // routes used here must be declaraed as children
        // routes of /dashboard
        routes: const [
          ParticleListRoute(),
          ParticleGridRoute(),
        ],
        builder: (context, child, animation) {
          // obtain the scoped TabsRouter controller using context
          final tabsRouter = AutoTabsRouter.of(context);
          _tabController.index = tabsRouter.activeIndex;
          // Here we're building our Scaffold inside of AutoTabsRouter
          // to access the tabsRouter controller provided in this context
          //
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Text("TEST"),
              bottom: TabBar(
                tabs: const [
                  Tab(child: Text("list")),
                  Tab(child: Text("grid")),
                ],

                // currentIndex: tabsRouter.activeIndex,
                onTap: (index) {
                  // here we switch between tabs
                  tabsRouter.setActiveIndex(index);
                },
                controller: _tabController,
              ),
            ),
            body: child,
            floatingActionButton: _floatingActionButton,
          );
        },
      ),
    );
  }

  bool filter = false;

  get _floatingActionButton => FloatingActionButton(
        child: filter ? Icon(Icons.verified) : null,
        onPressed: () {
          context.pushRoute(
            FilterRoute(
              filter: filter,
              onFilterChange: (value) {
                filter = !filter;
                context.popRoute();
              },
            ),
          );
        },
      );
}

class FilterPage extends StatelessWidget {
  final bool filter;
  final ValueChanged<bool> onFilterChange;

  const FilterPage({
    Key? key,
    required this.filter,
    required this.onFilterChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitchListTile(
        title: Text("filter"),
        value: filter,
        onChanged: onFilterChange,
      ),
    );
  }
}

