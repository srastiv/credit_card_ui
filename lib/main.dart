import 'package:flutter/material.dart';

import 'features/payment/presentation/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: ThemeData(fontFamily: "HelveticaNowDisplay", ),
        routeInformationParser: AppRoutes.router.routeInformationParser,
        routerDelegate: AppRoutes.router.routerDelegate,
        routeInformationProvider: AppRoutes.router.routeInformationProvider);
  }
}
