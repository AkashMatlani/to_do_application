import 'package:equatable/equatable.dart';
import 'package:to_do_application/models/to_do.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object> get props => [];
}

class LoadTodos extends TodoEvent {}

class UpdateTodos extends TodoEvent {
  final List<Todo> todos;

  const UpdateTodos(this.todos);

  @override
  List<Object> get props => [todos];
}

class AddTodo extends TodoEvent {
  final String title;

  const AddTodo(this.title);
}

class ToggleTodo extends TodoEvent {
  final Todo todo;

  const ToggleTodo(this.todo);
}

class DeleteTodo extends TodoEvent {
  final String id;

  const DeleteTodo(this.id);
}
