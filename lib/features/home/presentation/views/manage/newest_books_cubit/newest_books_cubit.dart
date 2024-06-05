import 'package:bookly/features/home/data/repository/home_repository.dart';
import 'package:bookly/features/home/presentation/views/manage/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  HomeRepository homeRepository;
  NewestBooksCubit({
    required this.homeRepository,
  }) : super(NewestBooksInitial());

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepository.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(message: failure.message)),
      (books) => emit(NewestBooksSuccess(
        books: books,
      )),
    );
  }
}
