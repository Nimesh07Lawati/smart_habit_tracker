import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_habit_tracker/features/habits/data/model/habit_model.dart';
import 'package:uuid/uuid.dart';

final habitProvider = NotifierProvider<HabitNotifier, List<Habit>>(
  HabitNotifier.new,
);

class HabitNotifier extends Notifier<List<Habit>> {
  final _uuid = const Uuid();

  @override
  List<Habit> build() {
    return [];
  }

  void addHabit(String title) {
    final newHabit = Habit(id: _uuid.v4(), title: title);

    state = [...state, newHabit];
  }

  void toggleHabit(String id) {
    state = state.map((habit) {
      if (habit.id == id) {
        return habit.copyWith(isCompleted: !habit.isCompleted);
      }
      return habit;
    }).toList();
  }
}
