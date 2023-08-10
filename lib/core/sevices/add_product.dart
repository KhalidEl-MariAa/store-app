import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';
import 'package:store_app/core/api_class.dart';

class Add_product{

Future <All_product_model> post_product({required String title,required String price,required String description,required String image,required String category })async{

   Map<dynamic,dynamic> product= await api().post_request(URL: 'https://fakestoreapi.com/products',
                      body: {'title': title,
                             'price': price,
                             'description': description,
                             'image': image,
                             'category': category},
                             
                             headers: {'Content-Type':'application/x-www-form-urlencoded',
                                       'Accept':'*/*'}, token: null); // add token

    return All_product_model.myjson(product);
}
} 