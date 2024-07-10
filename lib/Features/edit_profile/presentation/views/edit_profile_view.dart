import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/edit_profile/presentation/views/widgets/edit_profile_view_body.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            ),
          ),
        ),
        title: Text(
          'Edit Profile',
          style: Styles.textStyleSfProDisplayBold26.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: const EditProfileViewBody(),
    );
  }
}
