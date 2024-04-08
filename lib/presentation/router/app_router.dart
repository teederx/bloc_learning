import 'package:bloc_learning/logic/cubit/counter_cubit.dart';
import 'package:bloc_learning/presentation/screens/home_screen.dart';
import 'package:bloc_learning/presentation/screens/second_screen.dart';
import 'package:bloc_learning/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const HomeScreen(
              title: 'Home Screen',
              color: Colors.blueAccent,
            ),
          ),
        );
      // break;
      case '/second':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const SecondScreen(
              title: 'Second Screen',
              color: Colors.black,
            ),
          ),
        );
      // break;
      case '/third':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const ThirdScreen(
              title: 'Third Screen',
              color: Colors.redAccent,
            ),
          ),
        );
      // break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
