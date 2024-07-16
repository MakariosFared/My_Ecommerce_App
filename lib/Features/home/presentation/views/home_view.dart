import 'package:dikkan/Core/utils/app_router.dart';
import 'package:dikkan/Core/utils/widgets/custom_icon.dart';
import 'package:dikkan/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:dikkan/Features/my_account/presentation/views/my_account_view.dart';
import 'package:dikkan/Features/search/presentation/views/search_view.dart';
import 'package:dikkan/constant.dart';
import 'package:dikkan/Features/orders/presentation/views/orders_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedTab = 0;

  final List<Widget> screens = [
    const HomeView(),
    const SearchView(),
    const OrdersView(),
    const MyAccountView()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const HomeViewBody();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kGreenColor,
        elevation: 0,
        shape: const CircleBorder(),
        child: SvgPicture.asset(
          'assets/images/bag.svg',
        ),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        elevation: 0,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    currentScreen = const HomeViewBody();
                    selectedTab = 0;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MyFlutterApp.home_icon,
                    color: selectedTab == 0
                        ? kGreenColor
                        : const Color(0xffD9D9D9),
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: selectedTab == 0
                          ? kGreenColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    currentScreen = const OrdersView();
                    selectedTab = 1;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MyFlutterApp.orders_icon,
                    color: selectedTab == 1
                        ? kGreenColor
                        : const Color(0xffD9D9D9),
                  ),
                  Text(
                    'Orders',
                    style: TextStyle(
                      color: selectedTab == 1
                          ? kGreenColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    currentScreen = const SearchView();
                    selectedTab = 2;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MyFlutterApp.search_icon,
                    color: selectedTab == 2
                        ? kGreenColor
                        : const Color(0xffD9D9D9),
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: selectedTab == 2
                          ? kGreenColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kMyAccount);
                // setState(
                //   () {
                //     currentScreen = const MyAccountView();
                //     selectedTab = 3;
                //   },
                // );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MyFlutterApp.account_icon,
                    color: selectedTab == 3
                        ? kGreenColor
                        : const Color(0xffD9D9D9),
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: selectedTab == 3
                          ? kGreenColor
                          : const Color(0xffD9D9D9),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
