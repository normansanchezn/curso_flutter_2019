import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyStepper(),
  ));
}

class MyStepper extends StatefulWidget {
  @override
  _MyStepperState createState() => new _MyStepperState();
}


class _MyStepperState extends State<MyStepper>{
  int _currentStep = 0;
  List<Step> mySteps = [
    Step(
      title: Text("Paso 1"),
      content: Text("Aprender Flutter")
    ),
    Step(
      title: Text("Paso 2"),
      content: Text("Desarrollar nuestra primera aplicación en Flutter")
    ),
    Step(
      title: Text("Paso 3"),
      content: Text("Publicar la aplicación en producción.")
    )
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Demo Stepper"),
      ),
      body: Container(
        child: Stepper(
          // Nos indica cual es el paso actual del Stepper.
          currentStep: this._currentStep,
          steps: mySteps,
          // para presionar el botón de continuar
          onStepContinue: (){
            setState(() {
              // verificamos que no supere el tamaño de los pasos
              if (_currentStep < mySteps.length -1) {
                _currentStep =_currentStep + 1;
              } else {
                _currentStep = 0;
              }
            });
          },
          // para presionar el boton de cancelar
          onStepCancel: (){
            setState(() {
              // verificamos que no sea menor a 0
              if (_currentStep > 0) {
                _currentStep =_currentStep - 1;
              } else {
                _currentStep = 0;
              }
            });
          },
          // para presionar cualquierda de los pasos
          onStepTapped: (step){
            setState(() {
              _currentStep = step;
            });
          },
        ),
      ),
    );
  }
}