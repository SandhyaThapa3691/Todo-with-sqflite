import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/controller/todo_task_controller.dart';
import 'package:todo/model/todo_model.dart';

class TodoTile extends ConsumerStatefulWidget {
  final ToDoModel tasks;
  const TodoTile({super.key, required this.tasks});

  @override
  ConsumerState<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends ConsumerState<TodoTile> {
  int isCompleted = 0;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.tasks.title.toString(),
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
      ),
      leading: Checkbox(
        value: (widget.tasks.isCompleted == 1) ? true : false,
        onChanged: (value) {
          if (value != null) {
            setState(() {
              value ? isCompleted = 1 : isCompleted = 0;
            });

            final toDoModel = ToDoModel(
                title: widget.tasks.title,
                isCompleted: isCompleted,
                id: widget.tasks.id);
            ref.read(todoProvider.notifier).updateToDo(toDoModel);
          }
        },
      ),
    );
  }
}
