import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_habit_tracker/features/shared_widgets/habit_title.dart';
import 'package:smart_habit_tracker/widgets/app_button.dart';
import 'package:smart_habit_tracker/widgets/app_input.dart';
import 'package:smart_habit_tracker/widgets/custom_app_bar.dart';
import '../providers/habit_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final habits = ref.watch(habitProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: "My Habits"),
      body: habits.isEmpty
          ? const Center(
              child: Text(
                "No habits yet.\nTap + to add one!",
                textAlign: TextAlign.center,
              ),
            )
          : ListView.builder(
              itemCount: habits.length,
              itemBuilder: (context, index) {
                final habit = habits[index];
                return HabitTile(habit: habit);
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddHabitDialog(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddHabitDialog(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Add Habit"),
        content: AppInput(
          controller: controller,
          hintText: 'Enter habit titile',
        ),
        actions: [
          AppButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          AppButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                ref
                    .read(habitProvider.notifier)
                    .addHabit(controller.text.trim());
                Navigator.pop(context);
              }
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
