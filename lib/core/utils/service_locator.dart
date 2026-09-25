import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
  // getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
}
