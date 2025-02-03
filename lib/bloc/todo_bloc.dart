import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_application/bloc/todo_event.dart';
import 'package:to_do_application/bloc/todo_state.dart';
import 'package:to_do_application/repositories/todo_repository.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository repository;

  TodoBloc({required this.repository}) : super(TodoLoading()) {
    on<LoadTodos>((event, emit) {
      emit(TodoLoading());
      repository.getTodos().listen(
            (todos) => add(UpdateTodos(todos)),
          );
    });

    on<UpdateTodos>((event, emit) {
      emit(TodoLoaded(event.todos));
    });

    on<AddTodo>((event, emit) async {
      await repository.addTodo(event.title); // Add new todo
    });

    on<ToggleTodo>((event, emit) async {
      await repository.updateTodo(
        event.todo.copyWith(
            isCompleted: !event
                .todo.isCompleted), // Toggle the completion state of the todo
      );
    });

    on<DeleteTodo>((event, emit) async {
      await repository.deleteTodo(event.id); // Delete the todo by id
    });
  }
}
