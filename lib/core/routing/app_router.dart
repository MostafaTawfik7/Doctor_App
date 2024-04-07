import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/home/ui/home_screen.dart';
import 'package:doctor_app/features/onboarding/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter() => GoRouter(
      routes: [
        GoRoute(
          path: Routes.homeScreen,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: Routes.onboardingScreen,
          builder: (context, state) => const OnboardingScreen(),
        ),
      ],
    );
