import 'package:go_router/go_router.dart';
import 'package:smart_habit_tracker/features/habits/presentation/pages/home_page.dart';
import 'package:smart_habit_tracker/features/login/login_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    // Define your routes here
    // Example:
    GoRoute(path: RoutePaths.login, builder: (context, state) => LoginScreen()),
    GoRoute(path: RoutePaths.home, builder: (context, state) => HomePage()),
  ],
);

class RoutePaths {
  static const String login = '/';
  static const String home = '/HomePage';
}
