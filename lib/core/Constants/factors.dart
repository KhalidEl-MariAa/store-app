import 'package:flutter/material.dart';
import 'package:store_app/features/homepage/data/Models/all_pro_model.dart';
import 'package:store_app/features/editpage/presentation/view/update_pro_screen.dart';

// ignore: camel_case_types, must_be_immutable
class Card_widget extends StatelessWidget {
  All_product_model product;
  Card_widget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return  
       GestureDetector(
        onTap: (() => Navigator.pushNamed(context, Update_pro_Screen.id,arguments: product)),
child: Container(
   
  decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1),blurRadius: 10,spreadRadius: 5,)]),
   
  child: Card(child: Padding(
  padding: const EdgeInsets.only(left:4),
     child: Column(
mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
  children: [Center(child: Padding(
        padding: const EdgeInsets.only(bottom: 17),
        child: Image(image: NetworkImage(product.Image,),height: 100,width: 100,),
      )),Text(product.title.substring(0,6),style: TextStyle(color: Colors.grey[700],fontSize: 10)),
       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [Text(r'$' '${product.price.toString()}',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,),),
     

    Icon(Icons.favorite,color: Colors.red,),
 
       
     
     ],),]
   ),),),
  ),
       );

    
  }
}
// ignore: must_be_immutable
class TextFormfieldwidget extends StatelessWidget {
  bool obscureValue;
  String? hinttext;
  Icon? icon;
  Color? enablebordercolor;
  Function (String)? onchanged;
  TextInputType? textInputType;


  TextFormfieldwidget(
      {required this.hinttext, required this.icon,required this.enablebordercolor,this.onchanged,required this.obscureValue,required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6, left: 6),
      child: TextFormField(
        keyboardType: textInputType,
        obscureText: obscureValue,
        validator: (value) {
 if(value!.isEmpty){
   return 'Can\'t take Null Value';

 }
 else{
   return null;
 }
        },
        onChanged: onchanged,
        decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: enablebordercolor!)),
   enabledBorder:OutlineInputBorder (borderRadius: BorderRadius.circular(15),
       borderSide: BorderSide(color: enablebordercolor!, width: 1)),
   hintText: hinttext,
   suffixIcon: icon),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class buttonwidget extends StatelessWidget {
  String? text;
  double? width;
  double ?height;
  MaterialColor color;
  VoidCallback? onPressed; 
  buttonwidget(
      {required this.text,
      required this.width,
      required this.height,
      required this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
        style: ElevatedButton.styleFrom(
   backgroundColor: color,
   fixedSize: Size(width!, height!),
   alignment: Alignment.center),
        onPressed: onPressed,
        child:
   Text(text!, style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)));
  }
}


