import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('AccountView')),
      appBar: AppBar(
        title:const Text('AccountView'),

      ),
    );
  }
}