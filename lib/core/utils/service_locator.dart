import 'package:bookly/core/utils/app_services.dart';
import 'package:bookly/features/home/data/repository/home_repository_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  void init() {
    getIt.registerSingleton<AppServices>(AppServices(Dio()));
    getIt.registerSingleton<HomeRepositoryImplementation>(
        HomeRepositoryImplementation(apiService: getIt.get<AppServices>()));
  }
}
