import 'package:flutter/material.dart';
import 'package:stepper/splash.dart';

import 'globle.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "1",
    routes: {
      '/': (context) => stepper(),
      '1': (context) => splash(),
    },
  ));
}

class stepper extends StatefulWidget {
  const stepper({Key? key}) : super(key: key);

  @override
  State<stepper> createState() => _stepperState();
}

class _stepperState extends State<stepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper APP"),
        backgroundColor: Colors.red,
      ),
      body: Theme(
        data: ThemeData(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(
                background: Colors.red,
              )
              .copyWith(secondary: Colors.red),
        ),
        child: Stepper(
            controlsBuilder: (context, _) {
              return Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          if (Global.index < 2) {
                            Global.index++;
                          }
                        });
                      },
                      child:
                          (Global.index == 2) ? Text("Add") : Text("Continue")),
                  (Global.index != 0)
                      ? OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              if (Global.index > 0) {
                                Global.index--;
                              }
                            });
                          },
                          child: Text("Cancel"))
                      : Container()
                ],
              );
            },
            currentStep: Global.index,
            steps: Global.step
                .map((e) =>
                    Step(title: Text("${e['title']}"), content: e['content']))
                .toList()),
      ),
    );
  }
}
