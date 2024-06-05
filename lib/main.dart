import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_services.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/repository/home_repository.dart';
import 'package:bookly/features/home/data/repository/home_repository_implementation.dart';
import 'package:bookly/features/home/presentation/views/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/manage/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => FeaturedBooksCubit(
                  homeRepository: sl.get<HomeRepositoryImplementation>())
                ..fetchFeaturedBooks()),
          BlocProvider(
              create: (context) => NewestBooksCubit(
                  homeRepository: sl.get<HomeRepositoryImplementation>())
                ..fetchNewestBooks()),
          BlocProvider(
              create: (context) => SimilarBooksCubit(
                  homeRepository: sl.get<HomeRepositoryImplementation>())
                ..fetchSimilarBooks()),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          title: 'Book',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
          ),
        ));
  }
}
