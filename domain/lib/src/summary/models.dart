enum Category {
  confirmed,
  active,
  recovered,
  deceased,
  tested
}

class SummaryInfo {
  final int total;
  final int deltaToday;

  SummaryInfo(this.total, this.deltaToday);

  @override
  String toString() {
    return 'SummaryInfo{total:$total, deltaToday:$deltaToday}';
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}

