import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/api_class.dart';
import 'package:store_app/features/homepage/data/repostries/homeRepoImpl.dart';
import 'package:store_app/features/homepage/presentation/view_model/cubit/home_page_cubit.dart';
import 'package:store_app/features/screen3/presentation/view/screen3.dart';
import 'package:store_app/features/homepage/presentation/view/main_screen.dart';
import 'package:store_app/features/editpage/presentation/view/update_pro_screen.dart';

//import 'dart:html';
void main() {
  runApp(const store_App());
}

class store_App extends StatelessWidget {
  const store_App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(HomeRepoImpl(api()))..get_all_products(),
      child: MaterialApp(
        initialRoute: main_screen.MainScreen_Route,
        routes: {
          main_screen.MainScreen_Route: (context) => main_screen(),
          MyWidget.Sroute: (context) => MyWidget(),
          Update_pro_Screen.id: (context) => Update_pro_Screen()
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
