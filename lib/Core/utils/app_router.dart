import 'package:dikkan/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kOnBoardingView = '/onBoardingView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoardingView,
      builder: (context, state) => const SplashView(),
    ),
  ],);
}
