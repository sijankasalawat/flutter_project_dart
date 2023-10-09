import 'package:project1/view/arthemetic_view.dart';
import 'package:project1/view/dashboard_view.dart';
import 'package:project1/view/game_view.dart';
import 'package:project1/view/output_view.dart';

class AppRoute {
  AppRoute._();
  static const String dashboardRoute = "/";
  static const String arthemeticRoute = "/arthemetic";
  static const String outputRoute = "/output";
  static const String gameRoute = "/game";
  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      arthemeticRoute: (context) => const ArthemeticView(),
      outputRoute: (context) => const OutputView(),
      gameRoute:(context)=> const GameView(),
    };
  }
}
