import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key, 
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, right:25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundcolor: Color.fromARGB(255, 195, 34, 34),
              )
          ],
        ),
       child: Container(
         padding: EdgeInsets.all(24),
         decoration:BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(12),
         ),
         child: Row(
          children: [

            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: Colors.white,
              )
 
           //task name
 
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted
                ?TextDecoration.lineThrough
                :TextDecoration.none
                ),
              ),
          ],
         ),
       ),
      )
    );
  }
}

class StretchMotion {
}

SlidableAction({
  Function(BuildContext p1)? onPressed,
  required IconData icon,
  required Color backgroundcolor
}) {
}
