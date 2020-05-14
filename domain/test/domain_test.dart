import 'package:domain/domain.dart';
import 'package:test/test.dart';

void main() {
  group('AppInfo', () {
    AppInfo appInfo;
    setUp((){
      appInfo = AppInfo();
    });

    test('AppInfo Tests', () {
      expect(appInfo.appName, equals('Covid19'));
    });
  });
}
