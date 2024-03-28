import 'package:sirius_mortgage/features/count/domain/form_bloc/form_bloc.dart';

enum TextFieldType {
  cost(12),
  contribution(12),
  term(3),
  bet(5);

  final int maxCharacters;
  const TextFieldType(this.maxCharacters);
}

extension TextFieldTypeMap on TextFieldType {
  FormEvent mapToEvent(String text) {
    switch (this) {
      case TextFieldType.cost:
        return CostChangedEvent(text);
      case TextFieldType.contribution:
        return ContributionChangedEvent(text);
      case TextFieldType.term:
        return TermChangedEvent(text);
      case TextFieldType.bet:
        return BetChangedEvent(text);
    }
  }
}
