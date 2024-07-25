import 'package:dikkan/Features/home/presentation/views/widgets/details_header_bar.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailsViewBody(),
    );
  }
}

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          fit: StackFit.passthrough,
          children: [
            DetailsProductImagesSection(),
            DetailsHeaderBar(),
          ],
        ),
      ],
    );
  }
}

class DetailsProductImagesSection extends StatelessWidget {
  const DetailsProductImagesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      height: MediaQuery.of(context).size.height * 0.39,
      'assets/images/fresh orange.png',
      fit: BoxFit.fill,
    );
  }
}


