import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pwc_movie/Data/Models/movies_list.dart';
import 'package:pwc_movie/Data/Repository/movies_list_repository.dart';

part 'movies_list_state.dart';

class MoviesListCubit extends Cubit<MoviesListState> {
  MoviesListRepository moviesListRepository;
  MoviesListCubit(this.moviesListRepository) : super(MoviesListInitial());
  late MovieListModel model;

  Future<MovieListModel> getData() async {
    moviesListRepository
        .getMoviesList(title: "title", pageNumber: 1)
        .then((moviesList) {
      emit(OnComplete(moviesList));
      model = moviesList;
    });
    return model;
  }
}
