import 'package:flutter/cupertino.dart';

class IosNestedScrollView extends StatelessWidget {
  const IosNestedScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  CupertinoSliverNavigationBar(
                    padding: EdgeInsetsDirectional.zero,
                    largeTitle: const Text("Explorer"),
                    leading: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.add)),
                    trailing: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: const Icon(CupertinoIcons.search)),
                  ),
                ],
            body: Container()));
  }
}
