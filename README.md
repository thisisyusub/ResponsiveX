![GitHub](https://img.shields.io/github/license/yusubx/ResponsiveX)
![Pub Version](https://img.shields.io/pub/v/responsive_x)

# ResponsiveX

A simple Flutter package to handle responsiveness.

---

### Overview

The package consists of the followings:

- **SizeConfig** - is the simple class that makes calculation for responsiveness.
- **Extensions** - are functions to calculation dynamic `height`, `width` and `font size`.

---

### Example
First of all, you should initialize `SizeConfig` class using it's `init` method and giving the your design sizes (`Height` and `Width` given by your designer as screen size):

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig(
              designScreenWidth: 360,
              designScreenHeight: 640,
            ).init(constraints, orientation);

            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: MyHomePage(title: 'Flutter Demo Home Page'),
            );
          },
        );
      },
    );
  }
}
```
Then you can use `extension methods` to calculate  `height`, `width` and `font size` dynamically:

```dart
Container(
  height: 100.height,
  width: 100.width,
  color: Colors.pink,
),
```
You can calculate `font size` as following:
```dart
Container(
  height: 100.height,
  width: 100.width,
  color: Colors.pink,
  child: Center(
    child: Text(
      'ResponsiveX',
      style: TextStyle(
        fontSize: 14.fontSize,
        color: Colors.white,
      ),
    ),
  ),
),
```
---

## Dart Versions
- Dart 2: >= 2.7.0

## Maintainers

- [Kanan Yusubov](https://github.com/yusubx)


