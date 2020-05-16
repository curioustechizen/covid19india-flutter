import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:presentation/presentation.dart';

import 'screens/credits_screen.dart';
import 'screens/home_screen.dart';
import 'widgets/app_drawer.dart';
import 'widgets/covid_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './constants.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';

void main() {
  final injector = _ModuleContainer().init(Injector.getInjector());
  runApp(MyApp());
}

class _ModuleContainer {
  Injector init(Injector injector) {
    injector.map<SummaryRepository>((injector) => SummaryRepositoryImpl(),
        isSingleton: true);
    injector.map<GetSummaryUseCase>(
        (injector) => GetSummaryUseCase(injector.get<SummaryRepository>()), isSingleton: true);
    injector.map<SummaryViewModel>((injector) => SummaryViewModel(
        getSummaryUseCase: injector.get<GetSummaryUseCase>(),
        initialState:
            SummaryState(selectedCategory: Category.confirmed, summaryItems: {
          Category.confirmed:
              SummaryItemState(title: "Confirmed", total: "-", diff: "-"),
          Category.active:
              SummaryItemState(title: "Active", total: "-", diff: ""),
          Category.recovered:
              SummaryItemState(title: "Recovered", total: "-", diff: "-"),
          Category.deceased:
              SummaryItemState(title: "Deceased", total: "-", diff: "-"),
        })));

    return injector;
  }
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19India',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashFactory: InkRipple.splashFactory,
          canvasColor: kCanvasColor,
          brightness: Brightness.light,
          primarySwatch:
              generateMaterialColor(Color(kActiveHex).withAlpha(0xFF)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: appTextTheme),
      home: Covid19IndiaApp(),
    );
  }
}

class Covid19IndiaApp extends StatefulWidget {
  @override
  _Covid19IndiaAppState createState() => _Covid19IndiaAppState();
}

enum CurrentScreen { homeScreen, creditsScreen }

class _Covid19IndiaAppState extends State<Covid19IndiaApp> {
  var _currentScreen = CurrentScreen.homeScreen;

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);

    return Scaffold(
        drawer: AppDrawer(
          currentScreen: _currentScreen,
          onDrawerItemSelected: (CurrentScreen selectedScreen) {
            setState(() {
              _currentScreen = selectedScreen;
              Navigator.pop(context);
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: themeData.primaryColorDark),
          centerTitle: true,
          title: Covid19Header(),
        ),
        body: _currentScreen == CurrentScreen.homeScreen
            ? HomeScreen()
            : CreditsScreen());
  }
}
