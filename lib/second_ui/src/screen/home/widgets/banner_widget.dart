import 'package:flutter/material.dart';

import '../../../app.export.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.bannerColor,
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
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Up to",
                                style: AppThemes.black16TextStyle.copyWith(
                                  color: ColorConstants.primaryColor,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "50%",
                                style: AppThemes.black16TextStyle.copyWith(
                                  color: ColorConstants.bannerDiscountColor,
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
                              backgroundColor: ColorConstants
                                  .bannerBtnColor, // Set button background color to pink
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
}
