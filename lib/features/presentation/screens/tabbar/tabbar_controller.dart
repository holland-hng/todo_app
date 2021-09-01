import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/features/presentation/screens/list_task/list_tasks_screen.dart';

class TabbarController extends StatelessWidget {
  const TabbarController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Text(
                "All",
                style: TextStyle(fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Text(
                "Complete",
                style: TextStyle(fontSize: 15),
              ),
            ),
            BottomNavigationBarItem(
              icon: Text(
                "InComplete",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (contex) {
              switch (index) {
                case 0:
                  return ListTasksScreen(
                    type: TaskStatus.all,
                  );
                case 1:
                  return ListTasksScreen(
                    type: TaskStatus.complete,
                  );
                case 2:
                  return ListTasksScreen(
                    type: TaskStatus.incomplete,
                  );

                default:
              }
              return Scaffold(
                backgroundColor: Colors.white,
              );
            },
          );
        },
      ),
    );
  }
}
