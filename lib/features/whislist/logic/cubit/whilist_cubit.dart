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

  void loadProducts() {
    try {
      // Emit loaded state with product list and wishlist
      emit(WhilistLoaded(products: products, wishlist: wishlist));
    } catch (e) {
      emit(WhilistError('Failed to load products'));
    }
  }

  void toggleFavorite(Product product) {
    if (state is WhilistLoaded) {
      product.isFavorite = !product.isFavorite;
      if (product.isFavorite) {
        wishlist.add(product);
      } else {
        wishlist.remove(product);
      }

      // Emit updated product and wishlist state
      emit(WhilistLoaded(products: products, wishlist: wishlist));
    }
  }
}
