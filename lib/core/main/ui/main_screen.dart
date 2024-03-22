import 'package:flutter/material.dart';
import 'package:sirius_mortgage/core/main/ui/widgets/calc_button_widget.dart';
import 'package:sirius_mortgage/core/main/ui/widgets/compare_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ипотечный калькулятор'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            child: IconButton(
              icon: const Icon(
                Icons.more_vert,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: CalcButton(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: CompareButton(),
          ),
        ]
      ),
    );
  }
}
