import 'package:store_app/core/api_class.dart';
import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';
import 'package:store_app/features/homepage/data/repostries/homeRepo.dart';

class HomeRepoImpl extends HomeRepo{
  final api aapi;

  HomeRepoImpl(this.aapi);
  @override
  Future<List<All_product_model>> get_all_pro() async {
    // TODO: implement get_all_pro
    
  List<dynamic> data= await aapi.get_request(URL: 'https://fakestoreapi.com/products',headers: {'Accept':'*/*'}, token: null);
  

  List <All_product_model> product_list =[];

  for (int i=0 ; i< data.length;i++){

    product_list.add(All_product_model.myjson(data[i]));
  }
   return product_list;
}
  }
  
