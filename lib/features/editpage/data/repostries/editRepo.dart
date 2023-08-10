

import 'package:store_app/features/homepage/data/Models/extract_rating_model.dart';


abstract class UpdateProductRepo{

  Future <All_product_model_up> update_product({required int id,required String title,required String price,required String description,required String image,required String category } );
}

