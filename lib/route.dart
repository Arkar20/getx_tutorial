import 'package:getx_tutorial/page/home.dart';
import 'package:getx_tutorial/page/shopping-cart.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'shopping-cart',
          builder: (BuildContext context, GoRouterState state) {
            return const ShoppingCartPage();
          },
        ),
      ],
    ),
  ],
);
