import 'package:todo_app/enums/project_state.dart';
import 'package:todo_app/models/todo.dart';

class Project {
  final int id;
  final List<Todo> todos;
  final ProjectState state;

  Project(this.id, this.todos, this.state);
}
