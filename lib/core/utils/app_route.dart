import 'package:bookly/Features/Splash/presentation/Views/splash_view.dart';
import 'package:bookly/Features/home/data/model/bookmodel/bookmodel.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/details_book_cubits/details_book_cubit.dart';
import 'package:bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static String homeview = "/homeview";
  static String bookdetiles = "/bookdetiles";
  static String searchview = "/searchview";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: homeview, builder: (context, state) => HomeView()),
      GoRoute(path: searchview, builder: (context, state) => SearchView()),
      GoRoute(
        path: bookdetiles,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              DetailsBookCubit(homeRepo: getIt.get<HomeRepoImpl>()),
          child: BookDetilesView(bookmodel: state.extra as Bookmodel),
        ),
      ),
    ],
  );
}
