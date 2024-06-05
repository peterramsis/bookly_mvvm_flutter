import 'package:bookly/features/home/data/repository/home_repository.dart';
import 'package:bookly/features/home/data/repository/home_repository_implementation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/features/home/presentation/views/manage/featured_books_cubit/featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  HomeRepository homeRepository;
  FeaturedBooksCubit({
    required this.homeRepository,
  }) : super(FeaturedBooksInitial());

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepository.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(message: failure.message)),
      (books) => emit(FeaturedBooksSuccess(
        books: books,
      )),
    );
  }
}
