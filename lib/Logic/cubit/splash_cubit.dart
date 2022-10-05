import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:pwc_movie/Constants/strings.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void moveOn(BuildContext context) {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushNamed(context, movieScreen));
  }
}
