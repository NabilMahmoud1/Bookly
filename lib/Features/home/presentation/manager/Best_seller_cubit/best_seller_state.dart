part of 'best_seller_cubit.dart';

@immutable
sealed class BestSellerState {}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerloading extends BestSellerState {}

final class BestSellerfailure extends BestSellerState {
  final String errMessages;

  BestSellerfailure(this.errMessages);
}

final class BestSellersuccess extends BestSellerState {
  final List<Bookmodel> books;

  BestSellersuccess(this.books);
}
