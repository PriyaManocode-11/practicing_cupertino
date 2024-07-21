import 'package:flutter/cupertino.dart';
import 'package:practicing_cupertino/newpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.conversation_bubble), label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile')
      ], 
      backgroundColor: const Color.fromARGB(255, 178, 135, 182),
      activeColor: CupertinoColors.white,
      inactiveColor: CupertinoColors.white.withOpacity(0.5 ),
      onTap: (value) {
        print("listen tab changes $value");
      },
      ),
      tabBuilder: (context, index) {
         switch (index) {
          case 0 :
          return CupertinoTabView(
            builder: (context) {
              return const NewPage(text: "Tab 1", color: CupertinoColors.activeGreen);
            }
          );
          case 1:
          return CupertinoTabView(
            builder: (context) {
              return const NewPage(text: "Tab 2", color: CupertinoColors.systemRed);
            }
          );
          case 2:
          default:
          return CupertinoTabView(
            builder: (context) {
              return const NewPage(text: "Tab 3", color: CupertinoColors.activeOrange);
            }
          );
        }
      },
    );
  }
}
