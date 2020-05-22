import 'package:domain/domain.dart';
import 'package:intl/intl.dart';

const kUrl = 'https://covidstat.info/graphql';
const kJsonKeysMapTotal = {
  Category.confirmed: 'cases',
  Category.recovered: 'recovered',
  Category.active: 'active',
  Category.deceased: 'deaths'
};

const kJsonKeysMapToday = {
  Category.confirmed: 'todayCases',
  Category.recovered: 'todayRecovered',
  Category.deceased: 'todayDeaths'
};

final DateFormat dateFormat = DateFormat('MM/dd/yy');