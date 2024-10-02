// product_grid_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/features/whislist/logic/cubit/whilist_cubit.dart';
import '../../../whislist/data/products_model.dart';


class ProductGridItem extends StatelessWidget {
  final Product product;

  const ProductGridItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/Rectangle 9.png'),
              ),
              Positioned(
                top: 5.h,
                right: 5.w,
                child: IconButton(
                  icon: Icon(
                    product.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: product.isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    context.read<WhilistCubit>().toggleFavorite(product);
                  },
                ),
              ),
            ],
          ),
          Text(product.name),
          Text('Price: \$${product.price}'),
        ],
      ),
    );
  }
}
