import 'package:todo_app/enums/todo_state.dart';

class Todo {
  final int id;
  final int projectId;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String createdBy;
  final String updatedBy;
  final TodoState state;

  Todo(
       this.id,
       this.projectId,
       this.description,
       this.createdAt,
       this.updatedAt,
       this.createdBy,
       this.updatedBy,
       this.state);
}
