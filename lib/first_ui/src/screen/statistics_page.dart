import 'package:flutter/material.dart';
import 'package:flutter_ui_app/first_ui/src/commonWidget/custome_widget.dart';
import 'package:flutter_ui_app/generated/assets.dart';
import 'package:flutter_ui_app/utils/appThemes.dart';
import 'package:flutter_ui_app/utils/color_constant.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({super.key});

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
  List<SalesData> _chartData = [];
  late TooltipBehavior _tooltipBehavior;
  String selectedYear = '2024';
  String selectedMonth = 'March';
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: HexColor(ColorConstants.appColor),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Statics",
                        style: AppThemes.white26TextStyle,
                      ),
                      Icon(Icons.settings, color: Colors.white, size: 30)
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2024",
                          style: AppThemes.black26TextStyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    "1,032,568",
                                    style: AppThemes.black14TextStyle,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "32,568",
                                    style: AppThemes.black14TextStyle,
                                  ),
                                  Text(
                                    " vs last Year",
                                    style: AppThemes.black12TextStyle,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor(ColorConstants.dropDownColor),
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust the radius as needed
                                border: Border.all(
                                    color: HexColor(ColorConstants
                                        .dropDownBorderColor)), // Add border color
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: DropdownButton<String>(
                                  value: selectedYear,
                                  style: AppThemes.black12DropDownTextStyle,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedYear = newValue!;
                                    });
                                    // You can perform actions based on the selected year here
                                    print('Selected year: $selectedYear');
                                  },
                                  items: <String>['2024', '2023']
                                      .map((String year) {
                                    return DropdownMenuItem<String>(
                                      value: year,
                                      child: Text(year),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SfCartesianChart(
                          tooltipBehavior: _tooltipBehavior,
                          series: <ChartSeries>[
                            LineSeries<SalesData, double>(
                              dataSource: _chartData,
                              xValueMapper: (SalesData sales, _) => sales.year,
                              yValueMapper: (SalesData sales, _) => sales.sales,
                              // dataLabelSettings:
                              //     DataLabelSettings(isVisible: true),
                              enableTooltip: true,
                            )
                          ],
                          primaryXAxis: NumericAxis(
                              edgeLabelPlacement: EdgeLabelPlacement.shift,
                              interval: 2),
                          primaryYAxis: NumericAxis(interval: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor(ColorConstants.dropDownColor),
                                borderRadius: BorderRadius.circular(
                                    10.0), // Adjust the radius as needed
                                border: Border.all(
                                    color: HexColor(ColorConstants
                                        .dropDownBorderColor)), // Add border color
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: DropdownButton<String>(
                                  value: selectedMonth,
                                  style: AppThemes.black12DropDownTextStyle,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedMonth = newValue!;
                                    });
                                    // You can perform actions based on the selected year here
                                    print('Selected year: $selectedMonth');
                                  },
                                  items: <String>[
                                    'March',
                                    'April',
                                    'May',
                                    'June'
                                  ].map((String year) {
                                    return DropdownMenuItem<String>(
                                      value: year,
                                      child: Text(year),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CustomWidget(
                              title: "Total Profit",
                              subTitle: "This Month",
                              amount: "\$ 9000",
                              iconPath: Assets
                                  .statisticsProfitIcon /*TImage.profitIcon*/,
                              iconBorderColor:
                                  HexColor(ColorConstants.profitColor),
                              containerBorderColor:
                                  HexColor(ColorConstants.borderColor),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CustomWidget(
                              title: "Total Invest",
                              subTitle: "This Month",
                              amount: "\$ 109,000",
                              iconPath: Assets
                                  .statisticsSavingIcon /* TImage.savingIcon*/,
                              iconBorderColor:
                                  HexColor(ColorConstants.savingColor),
                              containerBorderColor:
                                  HexColor(ColorConstants.borderColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: HexColor(ColorConstants.borderColor),
                              width: 2,
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Recent Profit",
                                        style: AppThemes.black20TextStyle,
                                      ),
                                      Text(
                                        "\$ 12,464",
                                        style: AppThemes.black20TextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  // width: 70,
                                  child: SemicircularIndicator(
                                    strokeWidth: 10,
                                    strokeCap: StrokeCap.square,
                                    color:
                                        HexColor(ColorConstants.historyColor),
                                    bottomPadding: -10,
                                    child: Text(
                                      '74%',
                                      style: AppThemes.black20TextStyle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Profit History",
                          style: AppThemes.black20TextStyle.copyWith(
                            color: HexColor(ColorConstants.historyColor),
                          ),
                        ),
                        SizedBox(height: 15),
                        Expanded(
                          child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        Assets.statisticsCoinIcon,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "New Fund 1",
                                                    style: AppThemes
                                                        .black12TextStyle
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w800),
                                                  ),
                                                  Text(
                                                    "12/03/2024",
                                                    style: AppThemes
                                                        .black12TextStyle,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "\$20000",
                                              style: AppThemes.black12TextStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<SalesData> getChartData() {
    final List<SalesData> chartData = [
      SalesData(02, 60),
      SalesData(03, 35),
      SalesData(05, 105),
      SalesData(07, 90),
      SalesData(10, 45),
      SalesData(12, 145),
    ];
    return chartData;
  }
}

class SalesData {
  final double year;
  final double sales;

  SalesData(this.year, this.sales);
}
