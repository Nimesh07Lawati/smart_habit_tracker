import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_habit_tracker/features/habits/data/model/habit_model.dart';
import '../../features/habits/presentation/providers/habit_provider.dart';

class HabitTile extends ConsumerWidget {
  final Habit habit;

  const HabitTile({super.key, required this.habit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CheckboxListTile(
      title: Text(
        habit.title,
        style: TextStyle(
          decoration: habit.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      value: habit.isCompleted,
      onChanged: (_) {
        ref.read(habitProvider.notifier).toggleHabit(habit.id);
      },
    );
  }
}
