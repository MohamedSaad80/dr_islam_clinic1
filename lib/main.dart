import 'package:dr_islam_clinic/main_view_feature/controllers/main_view_cubit.dart';
import 'package:dr_islam_clinic/splash_view_feature/screens/dr_islam_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const DrIslamClinic());
}

class DrIslamClinic extends StatelessWidget {
  const DrIslamClinic({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainViewCubit>(
          create: (context) => MainViewCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => const GetMaterialApp(
            title: 'Dr.Islam Clinic', home: DrIslamSplashScreen()),
      ),
    );
  }
}
