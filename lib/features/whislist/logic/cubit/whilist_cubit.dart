import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/products_model.dart';

part 'whilist_state.dart';

class WhilistCubit extends Cubit<WhilistState> {
  WhilistCubit() : super(WhilistInitial());
  List<Product> products = [
    Product(name: 'Product 1', price: 20.0),
    Product(name: 'Product 2', price: 30.0),
    Product(name: 'Product 3', price: 25.0),
    Product(name: 'Product 4', price: 40.0),
    Product(name: 'Product 5', price: 50.0),
    Product(name: 'Product 6', price: 60.0),
  ];

  List<Product> wishlist = [];

 

  void addProductToWishlist(Product product) {
    wishlist.add(product);
    emit(WishlistUpdated(wishlist: wishlist));
  }

  void removeProductFromWishlist(Product product) {
    wishlist.remove(product);
    emit(WishlistUpdated(wishlist: wishlist));
  }
}
