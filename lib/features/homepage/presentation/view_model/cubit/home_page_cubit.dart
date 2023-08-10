
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';
import 'package:store_app/features/homepage/data/repostries/homeRepo.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this.homerepo) : super(HomePageInitial());
  final HomeRepo homerepo;

  
  Future<void> get_all_products() async{
    emit(HomePageLoading());
    try {
     List<All_product_model> products= await homerepo.get_all_pro();
      emit(HomePageSuccess(products: products));
    } catch (e) {
      emit(HomePageFailure(errormessage: e.toString()));
    }

    
  }
}
