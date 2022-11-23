import 'package:dr_islam_clinic/book_now_feature/views/screens/booking_now_screen.dart';
import 'package:dr_islam_clinic/core/constants/ui_constants.dart';
import 'package:dr_islam_clinic/follow_up_feature/views/screens/follow_up_screen.dart';
import 'package:dr_islam_clinic/main_view_feature/controllers/main_view_cubit.dart';
import 'package:dr_islam_clinic/main_view_feature/controllers/main_view_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../../home_feature/view/screens/home_screen.dart';
import '../widgets/custom_app_bar.dart';

class MainViewScreen extends StatelessWidget {
  const MainViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.2),
        child: const CustomAppBar(),
      ),
      bottomNavigationBar: BlocBuilder<MainViewCubit, MainViewStates>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: UiConstants.kMainColor,
            selectedIconTheme:
                const IconThemeData(color: UiConstants.kSecondColor),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.home,
                  size: 40,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.calendar_1,
                  size: 40,
                ),
                label: "Booking Now",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Iconsax.chart_1,
                  size: 40,
                ),
                label: "Follow Up",
              ),
            ],
            onTap: (index) {
              context
                  .read<MainViewCubit>()
                  .changeSelectedIndexForBottomBar(index);
            },
            currentIndex:
                context.read<MainViewCubit>().selectedIndexForBottomBar,
            unselectedItemColor: Colors.white,
            selectedItemColor: UiConstants.kSecondColor,
          );
        },
      ),
      body: BlocBuilder<MainViewCubit, MainViewStates>(
        builder: (context, state) {
          if (state is MainViewHomeState) {
            return const HomeScreen();
          } else if (state is MainViewBookingNowState) {
            return const BookingNowScreen();
          } else if (state is MainViewFlowUpState) {
            return const FollowUpScreen();
          } else {
            return const HomeScreen();
          }
        },
      ),
    );
  }
}
