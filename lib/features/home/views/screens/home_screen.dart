import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_mart/features/whislist/logic/cubit/whilist_cubit.dart';
import '../../../../core/routes/routes.dart';
import '../widgets/product_gride_item.dart';
import '../widgets/lable_row.dart';
import '../widgets/row_of_home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<WhilistCubit>().loadProducts();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.h),
          child: Column(
            children: [
              const RowOfHomeScreen(),
              SizedBox(height: 20.h),
              Image.asset('assets/images/Rectangle 6.png'),
              SizedBox(height: 20.h),
              const LableRow(
                lable: 'Latest Products',
                seeAll: 'See all',
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: BlocBuilder<WhilistCubit, WhilistState>(
                  builder: (context, state) {
                    if (state is WhilistLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is WhilistLoaded) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.details);
                        },
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 2,
                            childAspectRatio: 1,
                          ),
                          itemCount: state.products.length,
                          itemBuilder: (context, index) {
                            final product = state.products[index];
                            return ProductGridItem(product: product);
                          },
                        ),
                      );
                    } else if (state is WhilistError) {
                      return Center(child: Text(state.message));
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
