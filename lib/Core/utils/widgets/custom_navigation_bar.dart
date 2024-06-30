import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: () {},
            minWidth: 40,
            
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.house),
                Text('Home'),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 40,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.bookmark),
                Text('Save'),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 40,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.dining_sharp),
                Text('Food'),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            minWidth: 40,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle_outlined),
                Text('Account'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
