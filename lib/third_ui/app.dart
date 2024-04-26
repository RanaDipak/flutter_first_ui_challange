import 'package:flutter/material.dart';
import 'package:tournament_bracket/tournament_bracket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  MyhomePage({
    super.key,
  });

  final all = [
    List.generate(
        20, (index) => Team(name: 'team1 ${index + 1}', age: index + 1)),
    List.generate(
        7, (index) => Team(name: 'team1 ${(index * 2) + 1}', age: index + 1)),
    List.generate(
        2, (index) => Team(name: 'team3 ${index + 1}', age: index + 1))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("title"),
      ),
      body: TBracket<Team>(
        space: 200 / 4,
        separation: 150,
        stageWidth: 200,
        onSameTeam: (team1, team2) {
          if (team1 != null && team2 != null) {
            return team1.name == team2.name;
          }
          return false;
        },
        hadderBuilder: (context, index, count) => Container(
            alignment: Alignment.center,
            width: 220,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(width: 1)),
            child: Text("Level ${count - 1 == index ? 'winner' : index + 1}")),
        lineIcon: LineIcon(
            icon: Icons.add, backgroundColor: Colors.yellow, iconsSize: 20),
        connectorColor: Color.fromARGB(144, 244, 67, 54),
        winnerConnectorColor: Colors.green,
        teamContainerDecoration:
            BracketBoxDecroction(borderRadious: 15, color: Colors.black),
        stageIndicatorBoxDecroction: BracketStageIndicatorBoxDecroction(
            borderRadious: const Radius.circular(15),
            primaryColor: Color.fromARGB(15, 247, 123, 123),
            secondaryColor: Color.fromARGB(15, 194, 236, 147)),
        containt: all,
        teamNameBuilder: (Team t) {
          return BracketText(
            text: t.name,
            textStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          );
        },
        onContainerTapDown: (Team? model, TapDownDetails tapDownDetails) {
          if (model == null) {
            print(null);
          } else {
            print(model.name);
          }
        },
        onLineIconPress: ((team1, team2, tapDownDetails) {
          if (team1 != null && team2 != null) {
            print("${team1.name} and ${team2.name}");
          } else {
            print(null);
          }
        }),
        context: context,
      ),
    );
  }
}

class Team {
  Team({
    required this.name,
    required this.age,
  });

  final int age;
  final String name;
}
