import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/locale/locale.dart';

import '../../../../calculator/domain/model/calculator_dataclass.dart';

class TablePage extends StatefulWidget {
  const TablePage(this.table, {super.key});

  final List<CalculatorResultData> table;

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  bool isDetailed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocaleScope.of(context).table),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                isDetailed = !isDetailed;
              });
            },
            child: Text(isDetailed
                ? AppLocaleScope.of(context).tableShort
                : AppLocaleScope.of(context).tableDetail),
          ),
        ],
      ),
      body: isDetailed
          ? ListView.separated(
              itemBuilder: _detailBuilder,
              separatorBuilder: _separatorBuilder,
              itemCount: widget.table.length,
            )
          : ListView.builder(
              itemBuilder: _shortBuilder,
              itemCount: widget.table.length,
            ),
    );
  }

  Widget? _detailBuilder(BuildContext context, int index) {
    return SizedBox(
      height: 60,
      child: Placeholder(),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    return Divider();
  }

  Widget? _shortBuilder(BuildContext context, int index) {
    return SizedBox(
      height: 60,
      child: Placeholder(),
    );
  }
}
