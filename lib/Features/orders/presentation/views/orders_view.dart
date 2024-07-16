import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Core/utils/widgets/custom_button.dart';
import 'package:dikkan/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
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
            Tab(text: 'Ongoing'),
            Tab(text: 'History'),
            Tab(text: 'Draft'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Column(
            children: [
              Flexible(
                child: Center(
                  child: Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      'assets/images/ongoing Photo.svg',
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.saturation,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Ongoing is Empty',
                style: Styles.textStyleSfProDisplayMedium16.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 40,
                ),
                child: Text(
                  'You can go to Discover to add products.',
                  style: Styles.textStyleSfProDisplayRegular15.copyWith(
                    color: const Color(0xffACB1C0),
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: CustomButton(
                  borderRadius: BorderRadius.circular(10),
                  text: 'Go Discover',
                  onPressed: () {},
                  style: Styles.textStyleSfProDisplayRegular15.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 70),
            ],
          ),
          Center(
            child: Text(
              'history',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Center(
            child: Text(
              'draft',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
