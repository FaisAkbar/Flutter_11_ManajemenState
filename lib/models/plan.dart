import './task.dart';

class Plan{
  final String name;
  final List<Task> tasks;

  const Plan({
    this.name = '',
    this.tasks = const <Task>[],
  });

  int get competedCount => tasks
    .where((task) => task.complete)
    .length;
  
  String get completenessMessage =>
    '$competedCount of ${tasks.length} tasks';
}