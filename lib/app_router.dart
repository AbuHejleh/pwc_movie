import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pwc_movie/Constants/strings.dart';
import 'package:pwc_movie/Data/Repository/movies_list_repository.dart';
import 'package:pwc_movie/Data/Services/movies.dart';
import 'package:pwc_movie/Logic/cubit/movies_list_cubit.dart';
import 'package:pwc_movie/Presentation/Screens/movie_screen.dart';

import 'package:pwc_movie/Presentation/Screens/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case movieScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) =>
                      MoviesListCubit(MoviesListRepository(MoviesServices())),
                  child: MovieScreen(),
                ));
    }
    return null;
  }
}
