import 'package:data/src/summary_repository.dart';

Future<void> main() async {
  final summaryRepo = SummaryRepositoryImpl();
  final summary = await summaryRepo.getSummary();
  print(summary);
}