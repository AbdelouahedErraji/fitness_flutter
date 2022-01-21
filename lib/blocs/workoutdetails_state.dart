part of 'workoutdetails_bloc.dart';

@immutable
abstract class WorkoutDetailsState {}

class WorkoutDetailsInitial extends WorkoutDetailsState {}

class BackTappedState extends WorkoutDetailsState {}

class WorkoutExerciseCellTappedState extends WorkoutDetailsState {
  final Exercise currentExercise;
  final Exercise? nextExercise;

  WorkoutExerciseCellTappedState({
    required this.currentExercise,
    required this.nextExercise,
  });
}
