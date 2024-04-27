import 'package:flutter/material.dart';
import 'package:tournament_bracket/tournament_bracket.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final firstList = [
    Team(name: "Lighting Ball"),
    Team(name: "Dancin'Foos\n1:2\nThunderjet"),
    Team(name: "Blockers\n2:1\nBoomber Foos"),
    Team(name: "Gadgettos\n2:0\nThe Foostologists"),
    Team(name: "Randale!"),
    Team(name: "Refoos to lose\n2:1\nSilent Monster"),
    Team(name: "Kung Foos"),
    Team(name: "Foos Fighters\n2:0\nKamikaze Pilots"),
  ];
  final secondList = [
    Team(name: "Lighting Ball\n0:2\nThunderjet"),
    Team(name: "Blockers\nVS\nGadeettos"),
    Team(name: "Randale!\nVS\nRefoos to lose"),
    Team(name: "Kung Foos\nVS\nFoos Fighters"),
  ];
  final thirdList = [
    Team(name: "Thunderjet\nvs\n"),
    Team(name: "vs"),
  ];
  final fourthList = [
    Team(name: "vs"),
  ];
  final levelList = ["1/8 finals", "1/4 finals", "1/2 finals", "final"];

  @override
  Widget build(BuildContext context) {
    final allList = [firstList, secondList, thirdList, fourthList];
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.withOpacity(.20),
          child: TBracket<Team>(
            hadderBuilder: (context, index, count) => Container(
              alignment: Alignment.center,
              child: Text(levelList[index]),
            ),
            teamContainerDecoration:
                BracketBoxDecroction(color: Colors.black.withOpacity(.2)),
            stageIndicatorBoxDecroction: BracketStageIndicatorBoxDecroction(
              primaryColor: Colors.grey.withOpacity(.20),
              secondaryColor: Colors.grey.withOpacity(.20),
            ),
            containt: allList,
            teamNameBuilder: (Team t) {
              return BracketText(
                text: t.name,
                textStyle: const TextStyle(
                  color: Colors.black,
                ),
                // backgroundColor: Colors.grey.withOpacity(.20),
              );
            },
            context: context,
          ),
        ),
      ), /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1/8 finals"),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey,
                      child: Text("Lighting Ball"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Text("Lighting Ball"),
                          Text("1:2"),
                          Text("Thunderjet"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}

class Team {
  Team({
    required this.name,
  });

  final String name;
}
