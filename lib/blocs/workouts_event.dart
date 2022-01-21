part of 'workouts_bloc.dart';

@immutable
abstract class WorkoutsEvent {}

class CardTappedEvent extends WorkoutsEvent {
  final Workout workout;

  CardTappedEvent({required this.workout});
}
