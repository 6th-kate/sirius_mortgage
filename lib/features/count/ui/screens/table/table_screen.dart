import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sirius_mortgage/features/locale/locale.dart';

import '../../../../calculator/domain/model/calculator_dataclass.dart';
import '../../../../theme/theme.dart';

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
        title: Text(
          AppLocaleScope.of(context).table,
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                isDetailed = !isDetailed;
              });
            },
            child: Text(
              isDetailed
                  ? AppLocaleScope.of(context).tableShort
                  : AppLocaleScope.of(context).tableDetail,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      AppLocaleScope.of(context).tableDate,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      AppLocaleScope.of(context).tablePayment,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      AppLocaleScope.of(context).tableResidue,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: isDetailed ? _detailBuilder : _shortBuilder,
              separatorBuilder: _separatorBuilder,
              itemCount: widget.table.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget? _detailBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    DateFormat('d.MM.yyyy').format(widget.table[index].date),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    '${widget.table[index].payment.toStringAsFixed(2)} Р',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '${widget.table[index].residue.toStringAsFixed(2)} Р',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppLocaleScope.of(context).tableInterest,
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: Theme.of(context)
                                .extension<ThemeColors>()!
                                .tableLabel,
                          ),
                    ),
                    Text(
                      '${widget.table[index].interest.toStringAsFixed(2)} Р',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocaleScope.of(context).tablePrincipal,
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                            color: Theme.of(context)
                                .extension<ThemeColors>()!
                                .tableLabel,
                          ),
                    ),
                    Text(
                      '${widget.table[index].principal.toStringAsFixed(2)} Р',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget? _shortBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                DateFormat('d.MM.yyyy').format(widget.table[index].date),
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '${widget.table[index].payment.toStringAsFixed(2)} Р',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '${widget.table[index].residue.toStringAsFixed(2)} Р',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    return isDetailed
        ? const Divider(
            indent: 16,
            endIndent: 16,
          )
        : const SizedBox.shrink();
  }
}
