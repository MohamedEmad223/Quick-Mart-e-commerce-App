import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_text_style.dart';
import '../../../home/views/widgets/product_gride_item.dart';
import '../../../whislist/logic/cubit/whilist_cubit.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WhilistCubit, WhilistState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state is WhilistLoaded
                  ? 'Wishlist (${state.wishlist.length})' // Show the count of items in the wishlist
                  : 'Wishlist',
              style: AppTextStyle.plusJakartaSans14mediumblackColor.copyWith(
                fontSize: 20.sp,
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
              child: BlocBuilder<WhilistCubit, WhilistState>(
                builder: (context, state) {
                  if (state is WhilistLoaded) {
                    if (state.wishlist.isEmpty) {
                      return const Center(
                        child: Text('No items in wishlist'),
                      );
                    }
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 2,
                        childAspectRatio: 1,
                      ),
                      itemCount: state.wishlist.length,
                      itemBuilder: (context, index) {
                        final product = state.wishlist[index];
                        return ProductGridItem(product: product);
                      },
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
