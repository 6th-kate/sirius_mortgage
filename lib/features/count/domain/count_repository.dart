import 'package:sirius_mortgage/features/count/domain/domain_models/input_model.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

abstract interface class CountRepository {
  Future<OutputDomainModel> calculate(InputDomainModel input);
}
