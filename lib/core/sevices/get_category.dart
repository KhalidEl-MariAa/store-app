




import 'package:store_app/core/api_class.dart';
import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';
// ignore: camel_case_types
class category_service{

Future <List<dynamic>> get_category ({required String categ_name})async{
  
 List <dynamic> raw_data = await api().get_request(URL: 'https://fakestoreapi.com/products/category/$categ_name', headers: {'Accept':'*/*'}, token: null);
  
  
   List<All_product_model> data=[];
   
   for (int i=0;i<raw_data.length;i++){
    data.add(All_product_model.myjson(raw_data[i]));
   }
   return data;
}

}