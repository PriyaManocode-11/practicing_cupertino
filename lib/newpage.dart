import 'package:flutter/cupertino.dart';

class NewPage extends StatelessWidget {
  final String text;
  final Color color;
  final int number;
  const NewPage(
      {super.key, required this.text, required this.color, this.number = 1});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: color,
        navigationBar: CupertinoNavigationBar(
          middle: Text(text),
        ),
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$text on $number',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              CupertinoButton.filled(
                child: const Text(
                  'Open',
                  style: TextStyle(fontSize: 24, color: CupertinoColors.white),
                ),
                onPressed: () => Navigator.of(context, rootNavigator: true)
                    .push(CupertinoPageRoute(
                  builder: (context) => NewPage(
                    text: text,
                    color: color,
                    number: number + 1,
                  ),
                )),
              )
            ],
          ),
        )));
  }
}
