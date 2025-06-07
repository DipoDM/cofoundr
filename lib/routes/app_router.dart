import 'package:cofoundr/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../views/auth/sign_in_view.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) => const SignInView(),
      ),
      /* GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: '/profile-setup',
        builder: (context, state) => const ProfileSetupView(),
      ),
      GoRoute(
        path: '/match',
        builder: (context, state) => const SwipeMatchView(),
      ),*/
    ],
  );
});
