import 'package:flutter/material.dart';

import 'widgets/welcome_view_widgets/welcome_view_body.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WelcomeViewBody(),
      ),
    );
  }
}
