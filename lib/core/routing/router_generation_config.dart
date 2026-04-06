import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logistics_app/features/language_selection/screen/language_selection_screen.dart';
import 'package:logistics_app/features/main/screen/main_screen.dart';

import 'app_routes.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.splashScreen,
    errorBuilder: (_, _) {
      return Scaffold(body: Center(child: Text('This Route is not found')));
    },
    routes: [
      GoRoute(
        path: AppRoutes.languageSelectionScreen,
        name: AppRoutes.languageSelectionScreen,
        builder: (_, _) {
          return const LanguageSelectionScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (_, state) {
          return const MainScreen();
        },
      ),
    ],
  );
}
