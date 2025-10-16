import 'package:flutter/material.dart';
import 'package:myflu/patient.dart';

class HomeViewModel extends ChangeNotifier {
  final List<Patient> listPatients = [];

  void add(String name, String age){
    final patient = Patient(name: name, age: int.parse(age));
    listPatients.add(patient);
    notifyListeners(); //avisa que um paciente foi adcionado
  }

  void removePatient(Patient value){
    listPatients.remove(value);
    notifyListeners();

  }
}