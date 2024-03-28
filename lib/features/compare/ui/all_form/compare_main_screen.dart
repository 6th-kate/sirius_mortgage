import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/locale/locale.dart';

import '../../../../common/widget/mortgage_card.dart';
import 'compare_button.dart';

class ComparePage extends StatelessWidget {
  const ComparePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocaleScope.of(context).compare),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CompareItem(title: 'Вариант 1',),
              SizedBox(height: 16,),
              CompareItem(title: 'Вариант 2',),
              CompareButton(),
            ],
          ),
        ),
      ),
    );
  }
}
