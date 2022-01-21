import 'package:fitness_flutter/models/exercise.dart';

class Workout {
  final String title;
  final String exercices;
  final String minutes;
  final String currentProgress;
  final String progress;
  final String image;
  final List<String> exercises;

  Workout({
    required this.title,
    required this.exercices,
    required this.minutes,
    required this.currentProgress,
    required this.progress,
    required this.image,
    required this.exercises,
  });

  @override
  String toString() {
    return 'WorkoutData(title: $title, exercices: $exercices, minutes: $minutes, currentProgress: $currentProgress, progress: $progress, image: $image, exerciseDataList: $exercises)';
  }

  Workout.fromJson(Map<dynamic, dynamic> json)
      : title = json['title'] as String,
        exercices = json['exercices'] as String,
        minutes = json['minutes'] as String,
        currentProgress = json['currentProgress'] as String,
        progress = json['progress'] as String,
        exercises = json['exercises'] as List<String>,
        image = json['image'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'title': title,
        'exercices': exercices,
        'minutes': minutes,
        'currentProgress': currentProgress,
        'progress': progress,
        'exercises': exercises,
        'image': image,
      };
}
