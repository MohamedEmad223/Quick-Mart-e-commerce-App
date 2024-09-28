import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/verify_code_model.dart';

part 'verifycode_state.dart';

class VerifycodeCubit extends Cubit<VerifycodeState> {
  VerifycodeCubit() : super(VerifycodeInitial());
}
