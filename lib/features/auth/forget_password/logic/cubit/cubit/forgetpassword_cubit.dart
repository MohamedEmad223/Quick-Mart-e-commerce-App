import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/forget_password_model.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit() : super(ForgetpasswordInitial());
}
