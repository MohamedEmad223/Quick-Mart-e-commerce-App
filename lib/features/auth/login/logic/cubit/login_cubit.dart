import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/login_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
