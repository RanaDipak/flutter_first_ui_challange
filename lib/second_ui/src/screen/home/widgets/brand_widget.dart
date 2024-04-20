import 'package:flutter/material.dart';

import '../../../app.export.dart';

class BrandWidget extends StatelessWidget {
  const BrandWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                    color: (ColorConstants.brandBorderColor),
                    width: 2, // Border width
                  ),
                ),
                child: Center(
                  child: Text(
                    getBrandList[index].name,
                    // textAlign: TextAlign.center,
                    style: AppThemes.black14TextStyle.copyWith(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
