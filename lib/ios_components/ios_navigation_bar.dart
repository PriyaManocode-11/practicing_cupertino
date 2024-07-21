import 'package:flutter/cupertino.dart';

class IosNavigationBar extends StatelessWidget {
  const IosNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: 'Explore',
        backgroundColor: CupertinoColors.white,
        middle: Text("Add Image"),
        trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: Text("Done"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: const Text(
              "Sure! The GridView.count constructor in Flutter is used to create a grid layout with a fixed number of tiles in the cross axis. Here is a complete example demonstrating how to use GridView.count with square avatars:"),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton.filled(
          child: const Text("Next Page"),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (ctxt) => const IosNavigationBar(),));
          }),
    ));
  }
}
