part of 'home_page_cubit.dart';


abstract class HomePageState {}

 class HomePageInitial extends HomePageState {}
 class HomePageLoading extends HomePageState {}
 
 class HomePageSuccess extends HomePageState {
  List<All_product_model> products;
  HomePageSuccess({required this.products});
 }

 class HomePageFailure extends HomePageState {
  String errormessage;
  HomePageFailure({required this.errormessage});

 }

