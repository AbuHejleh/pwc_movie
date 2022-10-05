import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'movies_details_state.dart';

class MoviesDetailsCubit extends Cubit<MoviesDetailsState> {
  MoviesDetailsCubit() : super(MoviesDetailsInitial());
}
