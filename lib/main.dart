import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/service_locator.dart';
import 'package:dikkan/Features/home/data/repos/home_repo_impl.dart';
import 'package:dikkan/Features/home/presentation/manager/home_category_cubit/home_category_cubit.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const DikkanApp());
}

class DikkanApp extends StatefulWidget {
  const DikkanApp({super.key});

  @override
  State<DikkanApp> createState() => _DikkanAppState();
}

class _DikkanAppState extends State<DikkanApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCategoryCubit(
            getIt.get<HomeRepoImpl>(),
          )..getAllCategories(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
