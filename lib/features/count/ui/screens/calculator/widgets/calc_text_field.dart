import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/form_bloc.dart';

import '../../../../domain/form_bloc/textfield_type_to_event.dart';

class CalculatorTextField extends StatefulWidget {
  final TextFieldType textFieldType;
  final String label;
  final String placeholder;

  final Widget? suffix;

  const CalculatorTextField({
    super.key,
    required this.label,
    required this.placeholder,
    this.suffix,
    required this.textFieldType,
  });

  @override
  State<CalculatorTextField> createState() => _CalculatorTextFieldState();
}

class _CalculatorTextFieldState extends State<CalculatorTextField> {
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() {
      context
          .read<FormBloc>()
          .add(widget.textFieldType.mapToEvent(controller.text));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(widget.label),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: widget.placeholder,
              suffixIcon: widget.suffix,
              counterText: '',
            ),
            keyboardType: TextInputType.number,
            maxLength: widget.textFieldType.maxCharacters,
          ),
        ],
      ),
    );
  }
}
