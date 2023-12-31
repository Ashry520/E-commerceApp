
import 'package:ecommerceapp/ui/auth/login/login_screen.dart';
import 'package:ecommerceapp/ui/auth/register/register_screen.dart';
import 'package:ecommerceapp/ui/splash/splash_screen.dart';
import 'package:ecommerceapp/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            initialRoute: SplashScreen.routeName,
            routes: {
              SplashScreen.routeName: (context) => SplashScreen(),
              LoginScreen.routeName: (context) => LoginScreen(),
              RegisterScreen.routeName: (context) => RegisterScreen(),

            },
            debugShowCheckedModeBanner: false,
            theme: AppTheme.MainTheme,
          );
        },
        child: LoginScreen());
  }
}
