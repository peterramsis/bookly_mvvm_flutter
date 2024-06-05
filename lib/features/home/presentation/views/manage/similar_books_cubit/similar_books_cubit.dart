import 'package:bookly/features/home/data/repository/home_repository.dart';
import 'package:bookly/features/home/presentation/views/manage/newest_books_cubit/newest_books_states.dart';
import 'package:bookly/features/home/presentation/views/manage/similar_books_cubit/similar_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  HomeRepository homeRepository;
  SimilarBooksCubit({
    required this.homeRepository,
  }) : super(SimilarBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepository.fetchNewestBooks();
    result.fold(
      (failure) => emit(SimilarBooksFailure(message: failure.message)),
      (books) => emit(SimilarBooksSuccess(
        books: books,
      )),
    );
  }
}
