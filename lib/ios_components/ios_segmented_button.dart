import 'package:flutter/cupertino.dart';

class IosSegmentedButton extends StatefulWidget {
  const IosSegmentedButton({super.key});

  @override
  State<IosSegmentedButton> createState() => _IosSegmentedButtonState();
}

class _IosSegmentedButtonState extends State<IosSegmentedButton> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Segmented Button"),
        ),
        child: SafeArea(
            child: ListView(
          children: [
            CupertinoSegmentedControl(
              selectedColor: CupertinoColors.activeGreen,
              unselectedColor: CupertinoColors.black,
              borderColor: CupertinoColors.activeGreen,
              pressedColor: CupertinoColors.activeOrange,
              groupValue: groupValue,
              padding: const EdgeInsets.all(10),
              children: const {
                0: Text("Header1"),
                1: Text("Header2"),
                2: Text("Header3"),
              },
              onValueChanged: (groupedValue) {
                setState(() {
                  groupValue = groupedValue;
                });
              },
            )
          ],
        )));
  }
}
