import 'package:ecom/colors/app_colors.dart';
import 'package:ecom/widgets/big_text.dart';
import 'package:ecom/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildItemPage(position);
          }),
    );
  }

  Widget _buildItemPage(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: index.isEven ? AppColors.bestLiked : AppColors.halfpurple,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/image3.jpg'))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32), color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'PilaoSweet',
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: AppColors.bestLiked,
                                  size: 15,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '4.8'),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '123457'),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: 'Comments')
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
