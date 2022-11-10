import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/checkout/checkout_screen.dart';
import '../screens/home/homescreen.dart';
import '../screens/scan/scanscreen.dart';
import '../screens/splash/onboarding.dart';
import '../screens/success/success_screen.dart';
import '../widgets/bottom_navigation_bar.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: "/bottomnav",
        builder: (BuildContext context, GoRouterState state) {
          return const CustomBottomNavigationBarWidget();
        },
      ),
      GoRoute(
        path: "/homescreen",
        builder: (BuildContext context, GoRouterState state) {
          return const  HomeScreen();
        },
      ),
      GoRoute(
        path: "/scanscreen",
        builder: (BuildContext context, GoRouterState state) {
          return const ScanScreen();
        },
      ),
      GoRoute(
        path: "/checkout",
        builder: (BuildContext context, GoRouterState state) {
          return const CheckOutScreen();
        },
      ),
      GoRoute(
        path: "/successscreen",
        builder: (BuildContext context, GoRouterState state) {
          return const SuccessScreen();
        },
      ),
    ],
  );
}
