import 'package:ecom/colors/app_colors.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
   return Container(
     child: PageView.builder(itemBuilder: (context, position){
       return _itemBuilderPage(position);
     }),
   ); 
  }
  Widget _itemBuiderPage(int index){
    return Container()
  }

  
}
