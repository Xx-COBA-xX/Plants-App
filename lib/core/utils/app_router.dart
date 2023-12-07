import 'package:go_router/go_router.dart';
import 'package:plants_app_with_firebase/featuers/auth/ui/view/signup_view.dart';
import 'package:plants_app_with_firebase/featuers/home/ui/view/home_view.dart';
import 'package:plants_app_with_firebase/featuers/onborading/ui/view/widgets/onboarding_view_body.dart';
import 'package:plants_app_with_firebase/featuers/splash/ui/view/splash_view.dart';

import '../../featuers/auth/ui/view/login_view.dart';

class AppRouter {
  static const String kHomeViewRouter = "/home_view_router";
  static const String kOnPoradingViewRouter = "/onporading_view_router";
  static const String kSignupViewRouter = "/signup_view_router";
  static const String kLoginViewRouter = "/signin_view_router";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOnPoradingViewRouter,
        builder: (context, state) => const OnBoradingViewBody(),
      ),
      GoRoute(
        path: kSignupViewRouter,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kLoginViewRouter,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
