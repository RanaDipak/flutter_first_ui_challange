import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String amount;
  final Color amountColor;
  final String iconPath;
  final Color iconBorderColor;
  final Color containerBorderColor;

  const CustomWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.amount,
    this.amountColor = Colors.black,
    required this.iconPath,
    required this.iconBorderColor,
    required this.containerBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: containerBorderColor,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                border: Border.all(
                  color: iconBorderColor,
                  width: 2,
                ),
              ),
              height: 60,
              width: 4.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(iconPath),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              subTitle,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    amount,
                    style: TextStyle(fontSize: 26, color: amountColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
