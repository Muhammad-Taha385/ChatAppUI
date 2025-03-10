import 'package:chatuiapp/domain/constants/appthemes.dart';
import 'package:chatuiapp/domain/constants/cubits/themecubit.dart';
import 'package:chatuiapp/domain/constants/cubits/themestates.dart';
import 'package:chatuiapp/repository/screens/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_)=>ThemeCubit(),child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit,Themestates>(
      builder: (context, state) {
        return
        MaterialApp(
          debugShowCheckedModeBanner: false,
        title: 'Chat App',
        theme: state is LightThemeStates ?Appthemes.lighttheme : Appthemes.darktheme,
        home: OnBoardingScreen(),
      // This trailing comma makes auto-formatting nicer for build methods.
      );
      },
      // child: MaterialApp(
      //   // title: 'Flutter Demo',
      // // This trailing comma makes auto-formatting nicer for build methods.
      // ),
    );
  }
}
