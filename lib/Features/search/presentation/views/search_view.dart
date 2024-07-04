import 'package:dikkan/Features/search/presentation/views/widget/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // bottomNavigationBar: const CustomNavigationBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: kGreenColor,
      //   elevation: 0,
      //   shape: const CircleBorder(),
      //   child: const Icon(
      //     FontAwesomeIcons.bagShopping,
      //     color: Colors.white,
      //   ),
      // ),
      body: SearchViewBody(),
    );
  }
}
