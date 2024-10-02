import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/network/dio_handler.dart';
import 'package:quick_mart/core/routes/routes.dart';
import 'package:quick_mart/features/auth/forget_password/logic/forget_password/cubit/forgetpassword_cubit.dart';
import 'package:quick_mart/features/auth/forget_password/views/screens/success_screen.dart';
import 'package:quick_mart/features/auth/sign_in/sign_up/data/repo/sign_up_repo.dart';
import 'package:quick_mart/features/auth/sign_in/sign_up/views/screens/log_in_screen.dart';
import 'package:quick_mart/features/on_boarding/view/screen/on_boarding_screen.dart';
import 'package:quick_mart/features/orders/views/screens/orders_screen.dart';
import 'package:quick_mart/features/settings/views/screens/change_password.dart';
import 'package:quick_mart/features/settings/views/screens/dark_mode_screen.dart';
import 'package:quick_mart/features/settings/views/screens/faqs_screen.dart';
import 'package:quick_mart/features/settings/views/screens/privacy_screen.dart';
import 'package:quick_mart/features/settings/views/screens/profile_screen.dart';
import 'package:quick_mart/features/settings/views/screens/shipping_address_screen.dart';
import 'package:quick_mart/features/settings/views/screens/term_and_conditions.dart';

import '../../features/auth/forget_password/data/repo/forget_password_repo.dart';
import '../../features/auth/forget_password/data/repo/reset_password_repo.dart';
import '../../features/auth/forget_password/data/repo/verify_code_repo.dart';
import '../../features/auth/forget_password/views/screens/create_password_screen.dart';
import '../../features/auth/forget_password/views/screens/email_verfication.dart';
import '../../features/auth/forget_password/views/screens/send_code_screen.dart';
import '../../features/auth/sign_in/sign_up/data/repo/login_repo.dart';
import '../../features/auth/sign_in/sign_up/logic/cubit/Auth_cubit.dart';
import '../../features/auth/sign_in/sign_up/views/screens/sign_up_screen.dart';
import '../../features/home/logic/botnavbar/cubit/botnavbar_cubit.dart';
import '../../features/home/views/screens/home_screen.dart';
import '../../features/splash/screens/splash_screen.dart';
import '../../features/whislist/views/screens/wishlist_screen.dart';
import '../widgets/bottom_nav_bar.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.logIn:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(
                    LoginRepo(
                      DioHandler(),
                    ),
                    SignUpRepo(
                      DioHandler(),
                    ),
                  ),
                  child: const LogInScreen(),
                ));
      case Routes.signUp:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AuthCubit(
                    LoginRepo(
                      DioHandler(),
                    ),
                    SignUpRepo(
                      DioHandler(),
                    ),
                  ),
                  child: const SignUpScreen(),
                ));
      case Routes.forgetPassword:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => ForgetpasswordCubit(
                    ForgetPasswordRepo(
                      DioHandler(),
                    ),
                    VerifyCodeRepo(
                      DioHandler(),
                    ),
                    ResetPasswordRepo(
                      DioHandler(),
                    ),
                  ),
                  child: const ForgetPasswordScreen(),
                ));
      case Routes.sendCodeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ForgetpasswordCubit(
              ForgetPasswordRepo(
                DioHandler(),
              ),
              VerifyCodeRepo(
                DioHandler(),
              ),
              ResetPasswordRepo(
                DioHandler(),
              ),
            ),
            child: const SendCodeScreen(),
          ),
        );
      case Routes.createPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ForgetpasswordCubit(
              ForgetPasswordRepo(
                DioHandler(),
              ),
              VerifyCodeRepo(
                DioHandler(),
              ),
              ResetPasswordRepo(
                DioHandler(),
              ),
            ),
            child: const CreatePasswordScreen(),
          ),
        );
case Routes.whislist:
        return MaterialPageRoute(builder: (context) => const WishlistScreen());
      case Routes.botNavBar:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => BotnavbarCubit(),
            child: const BottomNav(),
          ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.settings:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case Routes.shippingAddress:
        return MaterialPageRoute(
            builder: (context) => const ShippingAddressScreen());
      case Routes.privacyPolicy:
        return MaterialPageRoute(builder: (context) => const PrivacyScreen());
      case Routes.termsAndConditions:
        return MaterialPageRoute(
            builder: (context) => const TermAndConditions());
      case Routes.faqs:
        return MaterialPageRoute(builder: (context) => const FaqsScreen());
      case Routes.orderHistory:
        return MaterialPageRoute(builder: (context) => const OrdersScreen());
      case Routes.darkTheme:
        return MaterialPageRoute(builder: (context) => const DarkModeScreen());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (context) => const ChangePassword());
      case Routes.success:
        return MaterialPageRoute(builder: (context) => const SuccessScreen());
      default:
        return null;
    }
  }
}
