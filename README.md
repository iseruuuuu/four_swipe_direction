<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# four_swipe_direction

４方向（上・下・右・左）のスワイプが可能なパッケージ  
You can swipe 4 directions!!  

## Getting started (パッケージの導入方法)

<!-- 追加したもの -->
①
Add the dependency to your pubspec.yaml file.  
pubspec.yamlに以下のものを追加してください。  
```
  dependencies:  
    flutter:  
      sdk: flutter  
    four_swipe_direction:   
```
②
Tap `Pub get` in your pubspec.yaml file.
pubspec.yamlの上にある `Pub get`を押してください。

## Usage (使い方)

```
FourSwipeDirection(
  swipeUp: () {
  //上にスワイプしたときに呼び出されます。
  //Called when swiping up
  },
  swipeDown: (){
  //下にスワイプしたときに呼び出されます。
  //Called when swiping down
  },
  swipeLeft: () {
  //左にスワイプしたときに呼び出されます。
  //Called when swiping left
  },
  swipeRight: () {
  //右にスワイプしたときに呼び出されます。
  //Called when swiping right
  },
  child: Container(
    color: Colors.indigo,
    width: 100,
    height: 100,
  ),
),
```

## Additional information (補足情報)

・必ずしも４方向に呼び出さなくても構いません。  
=>なぜなら４つの方向は、nullableになっているからです。

・You don't need to use 4 swipe direction.  
=>because 4 swipe direction is nullable 

## Github  
  https://github.com/iseruuuuu/four_swipe_direction