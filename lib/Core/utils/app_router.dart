import 'package:dikkan/Core/utils/service_locator.dart';
import 'package:dikkan/Features/auth/presentation/views/forget_password_view.dart';
import 'package:dikkan/Features/auth/presentation/views/log_in_view.dart';
import 'package:dikkan/Features/auth/presentation/views/reset_password_view.dart';
import 'package:dikkan/Features/auth/presentation/views/sign_up_view.dart';
import 'package:dikkan/Features/auth/presentation/views/verification_otp_view.dart';
import 'package:dikkan/Features/edit_profile/presentation/views/edit_profile_view.dart';
import 'package:dikkan/Features/home/data/models/category_model/category.model.dart';
import 'package:dikkan/Features/home/data/repos/home_repo_impl.dart';
import 'package:dikkan/Features/home/presentation/manager/categories_products_cubit/categories_products_cubit.dart';
import 'package:dikkan/Features/home/presentation/views/category_details_view.dart';
import 'package:dikkan/Features/home/presentation/views/details_view.dart';
import 'package:dikkan/Features/home/presentation/views/home_view.dart';
import 'package:dikkan/Features/introduction/presentation/views/introduction_view.dart';
import 'package:dikkan/Features/my_account/presentation/views/my_account_view.dart';
import 'package:dikkan/Features/my_favorites/presentation/views/my_favorites_view.dart';
import 'package:dikkan/Features/search/presentation/views/filter_view.dart';
import 'package:dikkan/Features/search/presentation/views/search_view.dart';
import 'package:dikkan/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kIntroductionView = '/onBoardingView';
  static const String kLogIn = '/logIn';
  static const String kSignUn = '/signUp';
  static const String kForgetPassword = '/forgetPassword';
  static const String kVerification = '/verificationWithOTP';
  static const String kResetPassword = '/resetPassword';
  static const String kSearch = '/search';
  static const String kFilterView = '/filterView';
  static const String kMyAccount = '/myAccount';
  static const String kEditProfile = '/editProfile';
  static const String kMyFavorites = '/myFavorites';
  static const String kDetailsView = '/detailsView';
  static const String kCategoryDetailsView = '/categoryDetailsView';

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
      GoRoute(
        path: kResetPassword,
        builder: (context, state) => const ResetPasswordView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSearch,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kFilterView,
        builder: (context, state) => const FilterView(),
      ),
      GoRoute(
        path: kMyAccount,
        builder: (context, state) => const MyAccountView(),
      ),
      GoRoute(
        path: kEditProfile,
        builder: (context, state) => const EditProfileView(),
      ),
      GoRoute(
        path: kMyFavorites,
        builder: (context, state) => const MyFavoritesView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const DetailsView(),
      ),
      GoRoute(
        path: kCategoryDetailsView,
        // builder: (context, state) {
        //   final category = state.extra as CategoryModel;
        //   return CategoryDetailsViewBody(category: category);
        // },
        builder: (context, state) => BlocProvider(
          create: (context) =>
              CategoriesProductsCubit(getIt.get<HomeRepoImpl>()),
          child: CategoryDetailsView(
            category: state.extra as CategoryModel,
            // categoryModel: state.extra as CategoryModel,
          ),
        ),
      ),
    ],
  );
}
