class Habit {
  final String id;
  final String title;
  final bool isCompleted;

  Habit({required this.id, required this.title, this.isCompleted = false});

  Habit copyWith({String? id, String? title, bool? isCompleted}) {
    return Habit(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
