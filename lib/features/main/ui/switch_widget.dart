import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeadersWidget extends StatefulWidget {
  const LeadersWidget({super.key});

  @override
  State<LeadersWidget> createState() => _LeadersWidgetState();
}

class _LeadersWidgetState extends State<LeadersWidget> {
  int _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 4),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlidingSegmentedControl<int>(
                thumbColor: Theme.of(context).colorScheme.background,
                // backgroundColor: Theme.of(context).extension<ThemeColoros>()!.switchBackground,
                onValueChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _groupValue = value;
                    });
                  }
                },
                groupValue: _groupValue,
                children: const {
                  0: TrIndexOptionsWidget('История'),
                  1: TrIndexOptionsWidget('Избранное'),
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            // _groupValue == 0
            //     ? TrendIndexLeaders.buy.length
            //     : TrendIndexLeaders.sell.length,
            itemBuilder: (BuildContext context, int index) {
              return const ListTile(
                title: Text('ListTile with red background'),
                tileColor: Colors.red,
              );
            },
          ),
        ),
      ],
    );
  }
}

// class TrendIndexLeadersListTileWidget extends StatelessWidget {
//   const TrendIndexLeadersListTileWidget(this.item, {super.key});
//
//   final TrendIndexLeadersItem item;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(child: Image.asset(item.image)),
//       title: Text(
//         item.text,
//         style: AppTextStyles.subheadlineSemibold14,
//       ),
//       trailing: Text(
//         '${item.percent} %',
//         style: AppTextStyles.issMoney.apply(color: AppColors.statesSuccess),
//       ),
//     );
//   }
// }

class TrIndexOptionsWidget extends StatelessWidget {
  const TrIndexOptionsWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: double.infinity,
      child: Center(
        child: Text(
          text,
        ),
      ),
    );
  }
}
