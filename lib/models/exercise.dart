class Exercise {
  final String id;
  final String title;
  final String minutes;
  final String progress;
  final String video;
  final String description;
  final String steps;

  Exercise({
    required this.id,
    required this.title,
    required this.minutes,
    required this.progress,
    required this.video,
    required this.description,
    required this.steps,
  });

  @override
  String toString() {
    return 'ExerciseData(title: $title, minutes: $minutes, progress: $progress, video: $video)';
  }

  Exercise.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'] as String,
        title = json['title'] as String,
        minutes = json['minutes'] as String,
        progress = json['progress'] as String,
        video = json['video'] as String,
        description = json['description'] as String,
        steps = json['steps'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'id': id,
        'title': title,
        'minutes': minutes,
        'progress': progress,
        'video': video,
        'description': description,
        'steps': steps,
      };
}
