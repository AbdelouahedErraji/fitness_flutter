import 'package:fitness_flutter/constants/path_constants.dart';
import 'package:fitness_flutter/constants/text_constants.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/models/workout.dart';
import 'package:fitness_flutter/widgets/onboarding_tile.dart';

class DataConstants {
  // Onboarding
  static final onboardingTiles = [
    OnboardingTile(
      title: TextConstants.onboarding1Title,
      mainText: TextConstants.onboarding1Description,
      imagePath: PathConstants.onboarding1,
    ),
    OnboardingTile(
      title: TextConstants.onboarding2Title,
      mainText: TextConstants.onboarding2Description,
      imagePath: PathConstants.onboarding2,
    ),
    OnboardingTile(
      title: TextConstants.onboarding3Title,
      mainText: TextConstants.onboarding3Description,
      imagePath: PathConstants.onboarding3,
    ),
  ];

  // Workouts
  static final List<Workout> workouts = [
    Workout(
        title: TextConstants.yogaTitle,
        exercices: TextConstants.yogaExercises,
        minutes: TextConstants.yogaMinutes,
        currentProgress: '10',
        progress: '16',
        image: PathConstants.yoga,
        exercises: [
          'id'
        ])
  ];

  static final List<Workout> homeWorkouts = [
    Workout(
        title: 'Beginner',
        exercices: TextConstants.cardioExercises,
        minutes: TextConstants.cardioMinutes,
        currentProgress: '16',
        progress: '16',
        image: PathConstants.cardio,
        exercises: [
          'id'
        ]),
    Workout(
        title: 'Intermediate',
        exercices: TextConstants.cardioExercises,
        minutes: TextConstants.cardioMinutes,
        currentProgress: '16',
        progress: '16',
        image: PathConstants.cardio,
        exercises: [
          'id'
        ]),
    Workout(
        title: 'Advanced',
        exercices: TextConstants.cardioExercises,
        minutes: TextConstants.cardioMinutes,
        currentProgress: '16',
        progress: '16',
        image: PathConstants.cardio,
        exercises: [
          'id'
        ])
  ];

  // Reminder
  static List<String> reminderDays = [
    TextConstants.everyday,
    TextConstants.monday_friday,
    TextConstants.weekends,
    TextConstants.monday,
    TextConstants.tuesday,
    TextConstants.wednesday,
    TextConstants.thursday,
    TextConstants.friday,
    TextConstants.saturday,
    TextConstants.sunday,
  ];
}
