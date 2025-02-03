import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_application/models/to_do.dart';

class TodoRepository {
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Stream<List<Todo>> getTodos() {
    return fireStore.collection('todos').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Todo.fromDocument(doc)).toList();
    });
  }

  Future<void> addTodo(String title) async {
    await fireStore.collection('todos').add({
      'title': title,
      'isCompleted': false,
    });
  }

  Future<void> updateTodo(Todo todo) async {
    await fireStore.collection('todos').doc(todo.id).update(todo.toMap());
  }

  Future<void> deleteTodo(String id) async {
    await fireStore.collection('todos').doc(id).delete();
  }
}
