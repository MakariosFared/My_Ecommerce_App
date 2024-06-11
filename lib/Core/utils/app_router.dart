
import 'package:dikkan/Features/auth/presentation/views/widgets/log_in_view.dart';
import 'package:dikkan/Features/introduction/presentation/views/introduction_view.dart';
import 'package:dikkan/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kIntroductionView = '/onBoardingView';
  static const String kLogIn = '/logIn';
  static const String kSignIn = '/signIn';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kIntroductionView,
        builder: (context, state) => const IntroductionView(),
      ),
      GoRoute(
        path: kLogIn,
        builder: (context, state) => const LogInView(),
      ),
    ],
  );
}
