import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_app/features/homepage/presentation/view_model/cubit/home_page_cubit.dart';
import 'package:store_app/features/screen3/presentation/view/screen3.dart';
import 'package:store_app/core/Constants/factors.dart';

//import 'dart:html';

import 'package:flutter/material.dart';

//port 'dart:html';

class main_screen extends StatelessWidget {
  const main_screen({super.key});
  static String MainScreen_Route = 'Main Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 11,
            leading: Icon(Icons.arrow_back),
            title: Text(
              'New Trends',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding:const EdgeInsets.only(right: 15),
                child: GestureDetector(
                    
                    onTap: (() {
                      Navigator.pushNamed(context, MyWidget.Sroute);
                    }),
                    child:const Icon(
                      Icons.shopping_cart_rounded,
                      size: 30,
                    ),),
              )
            ],
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white),
        body: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            if(state is HomePageLoading){
              return const Center(child: CircularProgressIndicator(color: Colors.amber,),);
            }
           else if (state is  HomePageSuccess){
            
              
                
                  
                  return GridView.builder(
                    itemCount: state.products.length,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.1,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                    itemBuilder: ((context, index) {
                      return Card_widget(
                        product: state.products[index],
                      );
                    }),
                  );
              
              
            }
            else if(state is HomePageFailure){
              // ignore: unnecessary_string_interpolations
              return Center(child: Text('${state.errormessage}'));
            }
            else{
              return Center(child: CircularProgressIndicator(color: Colors.amber,));

            }
          },
        ));
  }
}
