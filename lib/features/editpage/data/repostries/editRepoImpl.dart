import 'package:store_app/core/api_class.dart';
import 'package:store_app/features/editpage/data/repostries/editRepo.dart';
import 'package:store_app/features/homepage/data/Models/extract_rating_model.dart';

class UpdateProductRepoImpl extends UpdateProductRepo{
  final api aapi;

  UpdateProductRepoImpl(this.aapi);
  @override
  Future<All_product_model_up> update_product({required int id, required String title, required String price, required String description, required String image, required String category})async {
    
  Map<String,dynamic> data=await aapi.put_request(URL: 'https://fakestoreapi.com/products/$id',
                    body:{'title': title,
                          'price': price,
                          'description': description,
                          'image': image,
                          'category': category} ,
                           headers:  {'Content-Type':'application/x-www-form-urlencoded',
                                       'Accept':'*/*'}, token: null,
                            );
                            return All_product_model_up.myjson(data);
  }


}