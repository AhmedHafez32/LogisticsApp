import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    errorBuilder: (_, _) {
      return Scaffold(
        body: Center(
          child: Text(
            'This Route is not found',
          ),
        ),
      );
    },
    routes: [

    ],
  );
}
