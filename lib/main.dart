import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investement_one/core/constants/app_routes.dart';
import 'package:investement_one/core/routes/generate_routes.dart';
import 'package:investement_one/dependencies/injector.dart';
import 'package:investement_one/presentation/screens/auth/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjectedDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ScreenUtilInit(
          designSize: Size(constraints.maxWidth, constraints.maxHeight),
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: GenerateRoutes().onGenerateRoute,
              initialRoute: RoutesConstant.login,
            );
          });
    });
  }
}
