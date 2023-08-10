// model of recieving product data



// ignore: camel_case_types
import 'package:store_app/features/homepage/data/Models/extract_rating_model.dart';

class All_product_model{

  int id;
  String title;
  dynamic price;
  String category;
   String description;
   String Image;
 Extract_rating_map? Rating;


 

   All_product_model({required this.id,required this.price,required this.title,required this.category,required this.description,required this.Image, required this.Rating});


factory All_product_model.myjson(data_json){
  
  
  
  return All_product_model(
    id: data_json['id'],
  title: data_json['title'],
   price:   data_json['price'],
   category: data_json['category'],
   Image:  data_json['image'],
   description: data_json['description'],   
   // ignore: unnecessary_null_in_if_null_operators
   Rating: Extract_rating_map.myjson(data_json['rating']) //: Extract_rating_map.myjson(data_json['rating'])
      );}
}


