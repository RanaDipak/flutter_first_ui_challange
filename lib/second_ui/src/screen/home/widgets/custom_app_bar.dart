import 'package:flutter/material.dart';

import '../../../app.export.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
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
}
