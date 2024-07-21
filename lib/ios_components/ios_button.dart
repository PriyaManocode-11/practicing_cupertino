import 'package:flutter/cupertino.dart';

class IosButton extends StatelessWidget {
  const IosButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Ios Buttons"),
        ),
        child: SafeArea(
            child: Center(
          child: CupertinoButton(
            minSize: 30,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
            color: const Color.fromARGB(255, 138, 89, 223),
            borderRadius: BorderRadius.circular(24),
            onPressed: () {},
            pressedOpacity: 0.7,
            child: const Text(
              'Click me',
              style: TextStyle(fontSize: 32),
            ),
          ),
        )));
  }
}
