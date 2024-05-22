import 'package:getx_tutorial/page/about.dart';
import 'package:getx_tutorial/page/contact-us.dart';
import 'package:getx_tutorial/page/customer.dart';
import 'package:getx_tutorial/page/home.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about-us',
          builder: (BuildContext context, GoRouterState state) {
            return const AboutUsPage();
          },
        ),
         GoRoute(
          path: 'contact-us',
          builder: (BuildContext context, GoRouterState state) {
            return const ContactUsPage();
          },
        ),
         GoRoute(
          path: 'customers',
          builder: (BuildContext context, GoRouterState state) {
            return const CustomerPage();
          },
        ),
      ],
    ),
  ],
);