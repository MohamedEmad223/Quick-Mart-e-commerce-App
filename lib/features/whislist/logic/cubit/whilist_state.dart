part of 'whilist_cubit.dart';

@immutable
sealed class WhilistState {}

final class WhilistInitial extends WhilistState {}

final class WhilistLoading extends WhilistState {}

final class WhilistLoaded extends WhilistState {
  final List<Product> products;
  final List<Product> wishlist;

  WhilistLoaded({required this.products, required this.wishlist});
}

class WishlistUpdated extends WhilistState {
  final List<Product> wishlist;

  WishlistUpdated({required this.wishlist});

}

final class WhilistError extends WhilistState {
  final String message;

  WhilistError(this.message);
}
