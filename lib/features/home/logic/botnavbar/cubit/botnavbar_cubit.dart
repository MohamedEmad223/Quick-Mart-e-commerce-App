import 'package:flutter_bloc/flutter_bloc.dart';

part 'botnavbar_state.dart';

class BotnavbarCubit extends Cubit<BotnavbarState> {
  BotnavbarCubit() : super(BotnavbarInitial());
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    emit(IndexChanged());
  }

  void changeIndexToHome() {
    currentIndex = 0;
    emit(IndexChanged());
  }
}
