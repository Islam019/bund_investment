import 'package:bund/features/home/presentation/pages/home_screen.dart';
import 'package:bund/features/investment/presentation/pages/investment_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const HomeScreen()),
  GoRoute(path: "/investment", builder: (context, state) => InvestmentScreen()),
]);
