import 'package:flutter/material.dart';
import 'package:sirius_mortgage/core/main/ui/widgets/calc_batton_widget.dart';

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
            padding: EdgeInsets.all(15.0),
            child: CalcButton(),
          ),
        ]
      ),
    );
  }
}
