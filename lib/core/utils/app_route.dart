import 'package:bookly/Features/Splash/presentation/Views/splash_view.dart';
import 'package:bookly/Features/home/presentation/view/book_details_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static String homeview = "/homeview";
  static String bookdetiles = "/bookdetiles";
  static String searchview = "/searchview";
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: homeview, builder: (context, state) => HomeView()),
      GoRoute(
        path: bookdetiles,
        builder: (context, state) => BookDetilesView(),
      ),
      GoRoute(path: searchview, builder: (context, state) => SearchView()),
    ],
  );
}
