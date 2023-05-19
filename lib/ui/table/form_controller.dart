import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model.dart';

class FormController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  int currentIndex = 0;

  List<User> userList = [
    User(name: "a", email: "a"),
    User(name: "d", email: "b"),
    User(name: "c", email: "c"),
  ];

  void updateForm() {
    User user = User(name: nameController.text, email: emailController.text);
    userList[currentIndex] = user;
    update();
  }

  void updateTextControllers(User user) {
    nameController.text = user.name;
    emailController.text = user.email;
    update();
  }

  void addUserToList(name, email) {
    userList.add(User(name: name, email: email));
    update();
  }

  void updateLanguageInformation() {
    // for (var i = 0; i <= userList.length; i++) { // ** don't need nested for loop here **
    for (var user in userList) {
      print("Name: " + user.name + " Email: " + user.email);
    }
    // }
  }
}
