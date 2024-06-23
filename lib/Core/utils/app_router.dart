import 'package:dikkan/Features/auth/presentation/views/forget_password_view.dart';
import 'package:dikkan/Features/auth/presentation/views/log_in_view.dart';
import 'package:dikkan/Features/auth/presentation/views/sign_up_view.dart';
import 'package:dikkan/Features/auth/presentation/views/verification_otp_view.dart';
import 'package:dikkan/Features/introduction/presentation/views/introduction_view.dart';
import 'package:dikkan/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kIntroductionView = '/onBoardingView';
  static const String kLogIn = '/logIn';
  static const String kSignUn = '/signUp';
  static const String kForgetPassword = '/forgetPassword';
  static const String kVerification = '/verificationWithOTP';

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
      GoRoute(
        path: kSignUn,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kForgetPassword,
        builder: (context, state) => const ForgetPasswordView(),
      ),
        GoRoute(
        path: kVerification,
        builder: (context, state) => const VerificationWithOTPView(),
      ),
    ],
  );
}
