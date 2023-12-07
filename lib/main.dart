import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';
import 'core/utils/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
          useMaterial3: true,
          fontFamily: "Mulish",
          scaffoldBackgroundColor: kWhiteColor),
      routerConfig: AppRouter.router,
    );
  }
}
