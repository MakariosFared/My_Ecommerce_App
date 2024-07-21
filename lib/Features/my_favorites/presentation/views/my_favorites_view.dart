import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/orders/presentation/views/widgets/orders_view_body.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';

class MyFavoritesView extends StatefulWidget {
  const MyFavoritesView({super.key});

  @override
  State<MyFavoritesView> createState() => _MyFavoritesViewState();
}

class _MyFavoritesViewState extends State<MyFavoritesView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FC),
      appBar: AppBar(
        leadingWidth: 0,
        leading: const SizedBox(),
        toolbarHeight: 100,
        title: const Text(
          'Orders',
          style: Styles.textStyleSfProDisplayBold26,
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          labelColor: kGreenColor,
          unselectedLabelColor: const Color(0xff8F9BB3),
          labelStyle: Styles.textStyleSfProDisplayRegular15.copyWith(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: Styles.textStyleSfProDisplayRegular15.copyWith(
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          indicatorColor: kGreenColor,
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: const Color(0xffF7F9FC),
          controller: tabController,
          tabs: const [
            Tab(text: 'Grocerys'),
            Tab(text: 'Suppliers'),
          ],
        ),
      ),
      body: OrdersViewBody(tabController: tabController),
    );
  }
}