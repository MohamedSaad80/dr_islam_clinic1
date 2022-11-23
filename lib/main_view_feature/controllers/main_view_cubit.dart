
import 'package:dr_islam_clinic/main_view_feature/controllers/main_view_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainViewCubit extends Cubit<MainViewStates> {
  MainViewCubit() : super(MainViewInitState());

   int selectedIndexForBottomBar = 0;

  void changeSelectedIndexForBottomBar(int newIndex) {
    selectedIndexForBottomBar = newIndex;
    if (selectedIndexForBottomBar == 0) {
      emit(MainViewHomeState());
    } else if (selectedIndexForBottomBar == 1) {
      emit(MainViewBookingNowState());
    } else if (selectedIndexForBottomBar == 2) {
      emit(MainViewFlowUpState());
    } 
  }

}