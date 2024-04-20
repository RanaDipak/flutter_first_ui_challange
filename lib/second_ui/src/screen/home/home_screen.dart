import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_app/generated/assets.dart';
import 'package:flutter_ui_app/second_ui/src/data/data.dart';
import 'package:flutter_ui_app/utils/appThemes.dart';
import 'package:flutter_ui_app/utils/color_constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF4B281B),
      ),
    );
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          customAppBarWidget(size),
          bannerWidget(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Category Title
                titlewidget(title: 'Category', onClick: "See All"),
                SizedBox(
                  height: 10,
                ),

                /// Category
                categoryWidget(),

                /// Brand Title
                titlewidget(title: 'Shop by Brand', onClick: "See All"),
                SizedBox(
                  height: 10,
                ),

                /// Brand
                brandWidget(),
                SizedBox(height: 10),

                /// Popular Title
                titlewidget(title: 'Popular items', onClick: "See All"),
                SizedBox(height: 10),
                popularWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox popularWidget() {
    return SizedBox(
      height: 280,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getPopularDataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              10), // Border radius for the image
                          child: Image.asset(
                            getPopularDataList[index].imageName!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            getPopularDataList[index].title!,
                            style: AppThemes.black14TextStyle.copyWith(
                              color: HexColor(ColorConstants.primaryColor),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 15),
                          Row(
                            children: [
                              Image.asset(Assets.ratingIcon),
                              SizedBox(width: 4),
                              Text(
                                "4.5",
                                style: AppThemes.black16TextStyle.copyWith(
                                  fontSize: 10,
                                  color:
                                      HexColor(ColorConstants.popRatingColor),
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
                            getPopularDataList[index].discountPrice!,
                            style: AppThemes.black12TextStyle.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            getPopularDataList[index].originalPrice!,
                            style: AppThemes.black12TextStyle.copyWith(
                              color: HexColor(ColorConstants.popPriceColor),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "10%off",
                            style: AppThemes.black12TextStyle.copyWith(
                              color: HexColor(ColorConstants.popPriceColor),
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
                Positioned(
                  top: 0,
                  right: 20,
                  child: Image.asset(
                    getPopularDataList[index].isLike!
                        ? Assets.fillHeartIcon
                        : Assets.smHeartIcon,
                    color: Colors.red,
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            );
          }),
    );
  }

  Padding bannerWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: HexColor(ColorConstants.bannerColor),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Summer Sale",
                            style: AppThemes.black24TextStyle.copyWith(
                              color: HexColor(ColorConstants.primaryColor),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Up to",
                                style: AppThemes.black16TextStyle.copyWith(
                                  color: HexColor(ColorConstants.primaryColor),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "50%",
                                style: AppThemes.black16TextStyle.copyWith(
                                  color: HexColor(
                                      ColorConstants.bannerDiscountColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Add your buy button functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: HexColor(ColorConstants
                                  .bannerBtnColor), // Set button background color to pink
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Apply border radius here
                              ),
                            ),
                            child: Text(
                              'Buy Now',
                              style: AppThemes.black14TextStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -34,
                      left: -15,
                      child: Image.asset(
                        Assets.bannerTopIcon,
                        // color: Colors.white,
                        width: 60,
                        height: 60,
                      ),
                    ),
                    Positioned(
                      bottom: -32,
                      left: -2,
                      child: Image.asset(
                        Assets.bannerBottomIcon,
                        // color: Colors.white,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  Assets.bannerIcon,
                  height: 180,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container customAppBarWidget(Size size) {
    return Container(
      height: 140,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF4B281B),
            Color(0xFF914D35),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Assets.logoIcon,
                  color: Colors.white,
                  width: 60,
                  height: 60,
                ),
                Image.asset(
                  Assets.heartIcon,
                  color: Colors.white,
                  width: 60,
                  height: 60,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Product',
                hintStyle: AppThemes.black12TextStyle.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.black45),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              cursorWidth: 2.0,
              cursorColor: Color(0xFF4B281B),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox brandWidget() {
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
                child: Center(
                  child: Text(
                    getBrandList[index].name,
                    // textAlign: TextAlign.center,
                    style: AppThemes.black14TextStyle.copyWith(
                      color: HexColor(ColorConstants.primaryColor),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget categoryWidget() {
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
                    SizedBox(
                      height: 80,
                      width: 80,
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

  Row titlewidget({required String title, required String onClick}) {
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
