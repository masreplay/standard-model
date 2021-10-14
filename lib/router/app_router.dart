import 'package:auto_route/auto_route.dart';
import 'package:standard_model/views/home_page.dart';
import 'package:standard_model/views/particle/particle_details_page.dart';
import 'package:standard_model/views/particle/particle_grid_page.dart';
import 'package:standard_model/views/particle/particle_list_page.dart';
import 'package:standard_model/welcome.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: WelcomePage),
    AutoRoute(
      page: HomePage,
      // guards: [WelcomeGuard],
      initial: true,
      children: [
        RedirectRoute(path: '', redirectTo: 'list'),
        AutoRoute(path: 'list', page: ParticleListPage),
        AutoRoute(path: 'grid', page: ParticleGridPage, initial: true),
        RedirectRoute(path: '*', redirectTo: 'list'),
      ],
    ),
    RedirectRoute(path: '/particles', redirectTo: '/particles/:id'),
    AutoRoute(path: "/particles/:id", page: ParticleDetailsPage),
  ],
)
class $AppRouter {}
