import 'package:flutter/material.dart';

import '../../../app.export.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: getPopularDataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Column(
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
                              color: ColorConstants.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // SizedBox(width: 5),
                          Row(
                            children: [
                              Image.asset(Assets.ratingIcon),
                              SizedBox(width: 4),
                              Text(
                                "4.5",
                                style: AppThemes.black16TextStyle.copyWith(
                                  fontSize: 10,
                                  color: (ColorConstants.popRatingColor),
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
                              color: (ColorConstants.popPriceColor),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "10%off",
                            style: AppThemes.black12TextStyle.copyWith(
                              color: (ColorConstants.popPriceColor),
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
                  Positioned(
                    top: 0,
                    right: 8,
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
              ),
            );
          }),
    );
  }
}
