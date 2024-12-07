import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:investement_one/presentation/screens/auth/login/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> initInjectedDependencies() async {
  // Register your dependencies here
  _injectUtilities();
  await _initializeDataSources();
  _initializeServices();
  _injectBlocsAndCubits();
}

// For utilities (ex: NavigationService, DialogService, etc)
void _injectUtilities() {
  // getIt.registerLazySingleton(() => NavigationService());
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  getIt.registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
}

// For BLoCs and Cubits
void _injectBlocsAndCubits() {
  getIt.registerFactory(() => LoginCubit());
}

// For data sources (ex: SharedPreferences, Api Data Retriever, etc)
Future<void> _initializeDataSources() async {
  // getIt.registerLazySingleton(() => AuthDataSource());
}

Future<void> _initializeServices() async {
  // getIt.registerLazySingleton(() => AuthService());
}
