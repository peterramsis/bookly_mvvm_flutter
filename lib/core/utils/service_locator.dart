import 'package:bookly/core/utils/app_services.dart';
import 'package:bookly/features/home/data/repository/home_repository_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    sl.registerSingleton<AppServices>(AppServices(Dio()));
    sl.registerSingleton<HomeRepositoryImplementation>(
        HomeRepositoryImplementation(apiService: sl.get<AppServices>()));
  }
}
