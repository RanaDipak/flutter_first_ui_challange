import 'package:flutter/material.dart';

import '../../../app.export.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                      height: 78,
                      width: 78,
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
                        color: ColorConstants.primaryColor,
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
}
