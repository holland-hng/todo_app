import 'package:flutter/material.dart';

class TaskItemView extends StatefulWidget {
  const TaskItemView({Key? key}) : super(key: key);

  @override
  _TaskItemViewState createState() => _TaskItemViewState();
}

class _TaskItemViewState extends State<TaskItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 0.5, color: Colors.grey),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Text(
                      "This is title",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                    child: Text(
                      "This is desciption\nThis is desciption",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox.expand(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: MaterialButton(
                onPressed: () {
                  print("check");
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
