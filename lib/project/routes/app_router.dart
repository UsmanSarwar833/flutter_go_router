import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go_flutter/pages/errorPage.dart';
import 'package:router_go_flutter/project/routes/app_route_constant.dart';

import '../../pages/page1.dart';
import '../../pages/page2.dart';
import '../../pages/page3.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    /// The route configuration.
    final GoRouter router = GoRouter(
        routes: <RouteBase>[
          /// route page1
          GoRoute(
              name: AppRoutesConstants.page1Route,
              path: '/',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return const MaterialPage(child: Page1());
              }),
          GoRoute(
              name: AppRoutesConstants.page2Route,
              path: '/page2/:userName',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return MaterialPage(
                    child: Page2(userName: state.pathParameters['userName']!));
              }),

          /// route page 3
          GoRoute(
            name: AppRoutesConstants.page3Route,
            path: '/page3',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return const MaterialPage(child: Page3());
            },
          ),
        ],
        errorPageBuilder: (context, state) {
          return const MaterialPage(child: ErrorPage());
        },
        redirect: (context, state) {
          if (!isAuth &&
              state.matchedLocation.startsWith('/${AppRoutesConstants.page2Route}')) {
            return context.namedLocation(AppRoutesConstants.page3Route);
          } else {
            return null;
          }
        });
    return router;
  }
}
