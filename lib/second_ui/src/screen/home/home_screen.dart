import 'package:flutter/material.dart';
import 'package:flutter_ui_app/generated/assets.dart';
import 'package:flutter_ui_app/second_ui/src/data/data.dart';
import 'package:flutter_ui_app/utils/appThemes.dart';
import 'package:flutter_ui_app/utils/color_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Category Title
              title(title: 'Category', onClick: "See All"),
              SizedBox(
                height: 10,
              ),

              /// Category
              category(),

              /// Brand Title
              title(title: 'Shop by Brand', onClick: "See All"),
              SizedBox(
                height: 10,
              ),

              /// Brand
              brand(),
              SizedBox(height: 10),

              /// Popular Title
              title(title: 'Popular items', onClick: "See All"),
              SizedBox(height: 10),
              SizedBox(
                height: 280,
                child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Expanded(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 200,
                                width: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      10), // Border radius for the image
                                  child: Image.asset(
                                    Assets.category_1Icon,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Elegant Blazer",
                                    style: AppThemes.black14TextStyle.copyWith(
                                      color:
                                          HexColor(ColorConstants.primaryColor),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(Assets.ratingIcon),
                                      SizedBox(width: 4),
                                      Text(
                                        "4.5",
                                        style:
                                            AppThemes.black16TextStyle.copyWith(
                                          fontSize: 10,
                                          color: HexColor(
                                              ColorConstants.popRatingColor),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$89.99",
                                    style: AppThemes.black12TextStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "\$120",
                                    style: AppThemes.black12TextStyle.copyWith(
                                      color: HexColor(
                                          ColorConstants.popPriceColor),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "10%off",
                                    style: AppThemes.black12TextStyle.copyWith(
                                      color: HexColor(
                                          ColorConstants.popPriceColor),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "See Similar",
                                style: AppThemes.black16TextStyle.copyWith(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                "Recommended for you ",
                                style: AppThemes.black16TextStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox brand() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getBrandList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: HexColor(ColorConstants.brandBorderColor),
                    width: 2, // Border width
                  ),
                ),
                child: Text(
                  getBrandList[index].name,
                  textAlign: TextAlign.center,
                  style: AppThemes.black14TextStyle.copyWith(
                    color: HexColor(ColorConstants.primaryColor),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget category() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getCategoryDataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Container(
                    //   width: 100,
                    //   height: 100,
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     image: DecorationImage(
                    //       fit: BoxFit.fill, // Choose your desired BoxFit option
                    //       image:
                    //           AssetImage(getCategoryDataList[index].imageName),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            50), // Border radius for the image
                        child: Image.asset(
                          getCategoryDataList[index].imageName,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Text(
                      getCategoryDataList[index].title,
                      textAlign: TextAlign.center,
                      style: AppThemes.black14TextStyle.copyWith(
                        color: HexColor(ColorConstants.primaryColor),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            );
          }),
    );
  }

  Row title({required String title, required String onClick}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppThemes.black16TextStyle.copyWith(
            color: HexColor(ColorConstants.primaryColor),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          onClick,
          style: AppThemes.black12TextStyle.copyWith(
            color: HexColor(ColorConstants.primaryColor),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
