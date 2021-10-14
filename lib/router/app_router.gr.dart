// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../views/home_page.dart' as _i2;
import '../views/particle/particle_details_page.dart' as _i3;
import '../views/particle/particle_grid_page.dart' as _i5;
import '../views/particle/particle_list_page.dart' as _i4;
import '../welcome.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    WelcomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WelcomePage());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    ParticleDetailsRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<ParticleDetailsRouteArgs>(
          orElse: () => ParticleDetailsRouteArgs(id: pathParams.getInt('id')));
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ParticleDetailsPage(key: args.key, id: args.id));
    },
    ParticleListRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ParticleListPage());
    },
    ParticleGridRoute.name: (routeData) {
      final args = routeData.argsAs<ParticleGridRouteArgs>(
          orElse: () => const ParticleGridRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.ParticleGridPage(key: args.key));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(WelcomeRoute.name, path: '/welcome-page'),
        _i6.RouteConfig(HomeRoute.name, path: '/', children: [
          _i6.RouteConfig('#redirect',
              path: '', redirectTo: 'list', fullMatch: true),
          _i6.RouteConfig(ParticleListRoute.name, path: 'list'),
          _i6.RouteConfig(ParticleGridRoute.name, path: 'grid'),
          _i6.RouteConfig('*#redirect',
              path: '*', redirectTo: 'list', fullMatch: true)
        ]),
        _i6.RouteConfig('/particles#redirect',
            path: '/particles', redirectTo: '/particles/:id', fullMatch: true),
        _i6.RouteConfig(ParticleDetailsRoute.name, path: '/particles/:id')
      ];
}

/// generated route for [_i1.WelcomePage]
class WelcomeRoute extends _i6.PageRouteInfo<void> {
  const WelcomeRoute() : super(name, path: '/welcome-page');

  static const String name = 'WelcomeRoute';
}

/// generated route for [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.ParticleDetailsPage]
class ParticleDetailsRoute extends _i6.PageRouteInfo<ParticleDetailsRouteArgs> {
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
class ParticleListRoute extends _i6.PageRouteInfo<void> {
  const ParticleListRoute() : super(name, path: 'list');

  static const String name = 'ParticleListRoute';
}

/// generated route for [_i5.ParticleGridPage]
class ParticleGridRoute extends _i6.PageRouteInfo<ParticleGridRouteArgs> {
  ParticleGridRoute({_i7.Key? key})
      : super(name, path: 'grid', args: ParticleGridRouteArgs(key: key));

  static const String name = 'ParticleGridRoute';
}

class ParticleGridRouteArgs {
  const ParticleGridRouteArgs({this.key});

  final _i7.Key? key;
}
