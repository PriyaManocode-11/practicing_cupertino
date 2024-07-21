import 'package:flutter/cupertino.dart';

class IosActionSheet extends StatelessWidget {
  const IosActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton.filled(
          child: const Text("Show Actions"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return buildActionSheet(context);
              },
            );
          }),
    ));
  }

  Widget buildActionSheet(BuildContext context) => CupertinoActionSheet(
        title: const Text("Hi how are you?"),
        message: const Text("Have a very good day"),
        actions: [
          CupertinoActionSheetAction(
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context, 1);
              },
              child: const Text("Add")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 2);
              },
              child: const Text("Edit")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, 3);
              },
              isDestructiveAction: true,
              child: const Text("Delete")),
        ],
        cancelButton: CupertinoActionSheetAction(
            onPressed: () {}, child: const Text("Cancel")),
      );
}
