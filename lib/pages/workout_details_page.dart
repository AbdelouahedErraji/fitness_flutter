import 'package:fitness_flutter/constants/text_constants.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/models/workout.dart';
import 'package:fitness_flutter/widgets/fitness_button.dart';
import 'package:fitness_flutter/pages/start_workout_page.dart';
import 'package:fitness_flutter/blocs/workoutdetails_bloc.dart';
import 'package:fitness_flutter/widgets/workout_details_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_flutter/extensions/list_extension.dart';

class WorkoutDetailsPage extends StatelessWidget {
  final Workout workout;
  WorkoutDetailsPage({required this.workout});

  @override
  Widget build(BuildContext context) {
    return _buildContext(context);
  }

  BlocProvider<WorkoutDetailsBloc> _buildContext(BuildContext context) {
    return BlocProvider<WorkoutDetailsBloc>(
      create: (context) => WorkoutDetailsBloc(workout: workout),
      child: BlocConsumer<WorkoutDetailsBloc, WorkoutDetailsState>(
        buildWhen: (_, currState) => currState is WorkoutDetailsInitial,
        builder: (context, state) {
          return Scaffold(
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FitnessButton(
                  title: TextConstants.start,
                  onTap: () {
                    /*Exercise? exercise = workout.exercises.firstWhereOrNull((element) => int.parse(element.progress)< 1);
                    if (exercise == null) exercise = workout.exercises.first;
                    int exerciseIndex = workout.exercises.indexOf(exercise);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => BlocProvider.value(
                                value: BlocProvider.of<WorkoutDetailsBloc>(context),
                                child: StartWorkoutPage(
                                  exercise: exercise!,
                                  currentExercise: exercise,
                                  nextExercise: exerciseIndex + 1 < workout.exercises.length ? workout.exercises[exerciseIndex + 1] : null,
                                ),
                              )),
                    );
                    */
                  },
                ),
              ),
              body: WorkoutDetailsContent(workout: workout));
        },
        listenWhen: (_, currState) => currState is BackTappedState || currState is WorkoutExerciseCellTappedState,
        listener: (context, state) {
          if (state is BackTappedState) {
            Navigator.pop(context);
          } else if (state is WorkoutExerciseCellTappedState) {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => BlocProvider.value(
                        value: BlocProvider.of<WorkoutDetailsBloc>(context),
                        child: StartWorkoutPage(
                          exercise: state.currentExercise,
                          currentExercise: state.currentExercise,
                          nextExercise: state.nextExercise,
                        ),
                      )),
            );
          }
        },
      ),
    );
  }
}
