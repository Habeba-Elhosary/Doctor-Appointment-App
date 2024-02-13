import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/features/home_screen/ui/home_screen.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/login/ui/login_screen.dart';
import 'package:doctor_appointment_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
