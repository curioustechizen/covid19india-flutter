import 'dart:math';

import 'package:data/src/summary_repository.dart';
import 'package:domain/domain.dart';

Future<void> main() async {
  final summaryRepo = SummaryRepositoryImpl();
  final stateLevel = await summaryRepo.getStateLevelDetails(Category.confirmed);
  final answer = stateLevel.fold((Failure f){}, (Map<StateUT, SummaryInfo> success) {
    return success.values.map((e) => e.total).reduce(max);
  });
  print(stateLevel);
  print('Max = $answer');
}