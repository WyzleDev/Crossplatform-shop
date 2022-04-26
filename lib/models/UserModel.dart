import 'package:flutter/material.dart';

class UserModel {
  final String image, name, surname, description;
  final Color color;

  UserModel({
      required this.name,
      required this.surname,
      required this.description,
      required this.color,
      required this.image});
}

