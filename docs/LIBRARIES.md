Here are some of the major libraries used in this app.

- `rx_dart`: The ViewModel layer is based mainly on reactive programming and utilizes RxDart for this
- `either_option`: The domain layer uses `Either` type extensively for exposing APIs to `data` and `presentation` layers. Errors that occur in `data` layer are transformed into `Either.Left`.
- `freezed`: For use "data classes" extensively; and also for "sealed class" feature, particularly in ViewModels (where Actions are defined as sealed classes)
- `flutter_simple_dependency_injection`: For, well, simple DI
- `built_path`: This is used for generating the SVG paths for the maps at build time. See [`SVG_MAPS.md`](SVG_MAPS.md) for more details.