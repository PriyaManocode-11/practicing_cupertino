import 'package:flutter/cupertino.dart';
import 'package:practicing_cupertino/ios_components/ios_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(
            barBackgroundColor: CupertinoColors.black,
            brightness: Brightness.dark,
            primaryColor: CupertinoDynamicColor(
                color: CupertinoColors.systemRed,
                darkColor: CupertinoColors.activeGreen,
                highContrastColor: CupertinoColors.systemRed,
                darkHighContrastColor: CupertinoColors.activeGreen,
                elevatedColor: CupertinoColors.systemRed,
                darkElevatedColor: CupertinoColors.activeGreen,
                highContrastElevatedColor: CupertinoColors.systemRed,
                darkHighContrastElevatedColor: CupertinoColors.activeGreen)
            // primaryColor: CupertinoColors.activeBlue,
            // barBackgroundColor: CupertinoColors.systemGrey,
            // scaffoldBackgroundColor: CupertinoColors.extraLightBackgroundGray,
            // textTheme: CupertinoTextThemeData(),
            ),
        home: IosButton());
  }
}
