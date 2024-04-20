import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui_app/second_ui/src/screen/home/widgets/banner_widget.dart';
import 'package:flutter_ui_app/second_ui/src/screen/home/widgets/category_widget.dart';
import 'package:flutter_ui_app/second_ui/src/screen/home/widgets/popular_widget.dart';

import '../../app.export.dart';
import 'widgets/brand_widget.dart';
import 'widgets/custom_app_bar.dart';

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
          /// Custom App Bar Widget
          CustomAppBar(size: size),

          /// Banner Widget
          BannerWidget(),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Category Title
                titleWidget(title: 'Category', onClick: "See All"),
                SizedBox(
                  height: 10,
                ),

                /// Category widget
                CategoryWidget(),

                /// Brand Title
                titleWidget(title: 'Shop by Brand', onClick: "See All"),
                SizedBox(
                  height: 10,
                ),

                /// Brand widget
                BrandWidget(),
                SizedBox(height: 10),

                /// Popular Title
                titleWidget(title: 'Popular items', onClick: "See All"),
                SizedBox(height: 10),

                /// Popular widget
                PopularWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row titleWidget({required String title, required String onClick}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppThemes.black16TextStyle.copyWith(
            color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          onClick,
          style: AppThemes.black12TextStyle.copyWith(
            color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
