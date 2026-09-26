import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/Best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/Features/home/presentation/manager/feature%20books%20cubit/feature_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupLocator();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBooksCubit(getIt.get<HomeRepoImpl>())..getfeaturebooks(),
        ),
        BlocProvider(
          create: (context) =>
              BestSellerCubit(getIt.get<HomeRepoImpl>())..getbestsellerbooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
