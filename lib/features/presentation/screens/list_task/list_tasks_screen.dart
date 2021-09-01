import 'package:flutter/material.dart';
import 'package:todo_app/features/presentation/widgets/task_item_view.dart';

enum TaskStatus {
  all,
  complete,
  incomplete,
}

class ListTasksScreen extends StatefulWidget {
  final TaskStatus type;
  const ListTasksScreen({Key? key, required this.type}) : super(key: key);

  @override
  _ListTasksScreenState createState() => _ListTasksScreenState(type);
}

class _ListTasksScreenState extends State<ListTasksScreen> {
  final TaskStatus type;
  late String _title;
  _ListTasksScreenState(this.type);
  @override
  void initState() {
    switch (type) {
      case TaskStatus.all:
        _title = "All tasks";
        break;
      case TaskStatus.complete:
        _title = "Complete tasks";
        break;
      case TaskStatus.incomplete:
        _title = "Incomplete tasks";
        break;

      default:
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        elevation: 1,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TaskItemView();
        },
      ),
    );
  }
}
