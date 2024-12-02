import 'package:ecom/colors/app_colors.dart';
import 'package:ecom/home/food_page_body.dart';
import 'package:ecom/widgets/big_text.dart';
import 'package:ecom/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Uganda'),
                      Row(
                        children: [
                          SmallText(text: "Kampala"),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.bestLiked),
                    ),
                  )
                ],
              ),
            ),
            FoodPageBody()
          ],
        ),
      ),
    );
  }
}
