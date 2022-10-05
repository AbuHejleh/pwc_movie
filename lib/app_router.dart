import 'package:flutter/material.dart';
import 'package:pwc_movie/Constants/strings.dart';

import 'package:pwc_movie/Presentation/Screens/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
    return null;
  }
}
