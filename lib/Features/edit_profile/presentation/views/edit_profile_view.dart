import 'package:dikkan/Core/utils/styles.dart';
import 'package:dikkan/Features/edit_profile/presentation/views/widgets/edit_profile_view_body.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        centerTitle: true,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            highlightColor: Colors.transparent,
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
