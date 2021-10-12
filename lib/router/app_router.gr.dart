// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/foundation.dart' as _i7;
import 'package:flutter/material.dart' as _i6;

import '../views/home_page.dart' as _i2;
import '../views/particle/particle_details_page.dart' as _i3;
import '../views/particle/particle_list_page.dart' as _i4;
import '../welcome.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.welcomeGuard})
      : super(navigatorKey);

  final _i1.WelcomeGuard welcomeGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WelcomePage());
    },
    FilterRoute.name: (routeData) {
      final args = routeData.argsAs<FilterRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.FilterPage(
              key: args.key,
              filter: args.filter,
              onFilterChange: args.onFilterChange));
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    ParticleDetailsRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ParticleDetailsRouteArgs>(
          orElse: () => ParticleDetailsRouteArgs(id: pathParams.getInt('id')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ParticleDetailsPage(key: args.key, id: args.id));
    },
    ParticleListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ParticleListPage());
    },
    ParticleGridRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ParticleGridPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(WelcomeRoute.name, path: '/welcome-page'),
        _i5.RouteConfig(FilterRoute.name, path: '/filter-page'),
        _i5.RouteConfig(HomeRoute.name, path: '/', guards: [
          welcomeGuard
        ], children: [
          _i5.RouteConfig('#redirect',
              path: '', redirectTo: 'list', fullMatch: true),
          _i5.RouteConfig(ParticleListRoute.name, path: 'list'),
          _i5.RouteConfig(ParticleGridRoute.name, path: 'grid'),
          _i5.RouteConfig('*#redirect',
              path: '*', redirectTo: 'list', fullMatch: true)
        ]),
        _i5.RouteConfig('/particles#redirect',
            path: '/particles', redirectTo: '/particles/:id', fullMatch: true),
        _i5.RouteConfig(ParticleDetailsRoute.name, path: '/particles/:id')
      ];
}

/// generated route for [_i1.WelcomePage]
class WelcomeRoute extends _i5.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/welcome-page');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i2.FilterPage]
class FilterRoute extends _i5.PageRouteInfo<FilterRouteArgs> {
  FilterRoute(
      {_i7.Key? key,
      required bool filter,
      required void Function(bool) onFilterChange})
      : super(name,
            path: '/filter-page',
            args: FilterRouteArgs(
                key: key, filter: filter, onFilterChange: onFilterChange));

  static const String name = 'FilterRoute';
}

class FilterRouteArgs {
  const FilterRouteArgs(
      {this.key, required this.filter, required this.onFilterChange});

  final _i7.Key? key;

  final bool filter;

  final void Function(bool) onFilterChange;
}

/// generated route for [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.ParticleDetailsPage]
class ParticleDetailsRoute extends _i5.PageRouteInfo<ParticleDetailsRouteArgs> {
  ParticleDetailsRoute({_i7.Key? key, required int id})
      : super(name,
            path: '/particles/:id',
            args: ParticleDetailsRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'ParticleDetailsRoute';
}

class ParticleDetailsRouteArgs {
  const ParticleDetailsRouteArgs({this.key, required this.id});

  final _i7.Key? key;

  final int id;
}

/// generated route for [_i4.ParticleListPage]
class ParticleListRoute extends _i5.PageRouteInfo<void> {
  const ParticleListRoute() : super(name, path: 'list');

  static const String name = 'ParticleListRoute';
}

/// generated route for [_i4.ParticleGridPage]
class ParticleGridRoute extends _i5.PageRouteInfo<void> {
  const ParticleGridRoute() : super(name, path: 'grid');

  static const String name = 'ParticleGridRoute';
}
