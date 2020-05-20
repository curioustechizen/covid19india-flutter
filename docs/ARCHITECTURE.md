This doc describes the architecture of this app at a high level. The attempt is to implement Clean Architecture, while being faithful to Flutter's paradigms.

Note that my day job is an Android developer so some bias has crept in, in the naming and in general architecture.

Lots can be improved in the architecture. See [here](https://github.com/curioustechizen/covid19india-flutter/issues?q=is%3Aissue+is%3Aopen+label%3Aarchitecture) for specific issues related to architecture.

## Layers

### Domain (see `domain` package)

- This is the core business logic of the app.
- Does not depend on any other layer. 
- It is a pure Dart package and has no Flutter dependencies.
- Implemented as UseCases
- Defines Repository interfaces for Data layer to implement

###  Data (see `data` package)

- This is the data source layer of the app. 
- Depends on Domain. 
- Currently this is also a pure Dart module but it might need to be changed to a Flutter package if we introduce things like SharedPreferences etc.

### Presentation (see `presentation` package)

- Depends on Domain.
- This is where ViewModels are defined (see the section on ViewModels below)
- **TODO:** Move widgets and screens here.

### App

- Depends on all other layers 
- Wires everything together

## ViewModel architecture

- ViewModels offer a `dispatchAction(Action)` API to inform them of input events.
- ViewModels expose a single `BehaviorSubject<State>` for views to consume.

This is a typical unidirectional data flow architecture.
