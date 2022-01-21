import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';
import 'package:fitness_flutter/constants/all-colors.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/models/workout.dart';
import 'package:fitness_flutter/pages/login-page.dart';
import 'package:fitness_flutter/pages/signup-page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final double height = window.physicalSize.height;

  void _createNewExercice() {
    final DatabaseReference _workouts =
        FirebaseDatabase.instance.reference().child('workouts');

    final DatabaseReference _exercices =
        FirebaseDatabase.instance.reference().child('exercices');

    var orderRef = _exercices.push();

    Exercise e1 = new Exercise(
        id: orderRef.key,
        title: "Ex1",
        minutes: '1',
        progress: "2",
        video: "vid",
        description: "des",
        steps: "7");
    orderRef.set(e1.toJson());
    //Workout w1 = new Workout(currentProgress: '9', exercises: [e1,e1], minutes: '8', image: '', title: 'W1', exercices: 'exs', progress: '8');
    //_exercices.push().set(e1.toJson());
  }

  _WelcomePageState() {
    _createNewExercice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/photos/background.png"),
                  fit: BoxFit.cover)),
        ),
        SafeArea(
            child: Center(
          child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, left: 16.0, right: 16.0, bottom: 16),
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        color: AllColors.bgColorScreen,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 4),
                                  child: Center(
                                      child: Text(
                                          "Begin Your Workout\n Journey\n Here",
                                          style: TextStyle(
                                              color: AllColors.white,
                                              fontSize: 64,
                                              fontWeight: FontWeight.bold))),
                                ),
                                SizedBox(height: 160.0),
                                Center(
                                  child: RaisedButton(
                                    textColor: AllColors.white,
                                    color: AllColors.white,
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (_) {
                                              return SignUpPage();
                                            },
                                          ),
                                        );
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.0,
                                            right: 32.0,
                                            top: 12,
                                            bottom: 12),
                                        child: Text("Sign Up",
                                            style: TextStyle(
                                                color: AllColors.black,
                                                fontSize: 28.0))),
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Center(
                                  child: RaisedButton(
                                    textColor: AllColors.white,
                                    color: AllColors.primary,
                                    onPressed: () {
                                      setState(() {
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (_) {
                                              return LogInPage();
                                            },
                                          ),
                                        );
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 32.0,
                                            right: 32.0,
                                            top: 12,
                                            bottom: 12),
                                        child: Text("Log In",
                                            style: TextStyle(
                                                color: AllColors.black,
                                                fontSize: 28.0))),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              )),
        ))
      ],
    ));
  }
}
