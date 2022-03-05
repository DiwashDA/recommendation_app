import 'package:flutter/material.dart';

class DialogRequest {
  final String? title;
  final String? description;
  final String? buttonTitle;
  final Widget? content;
  final bool? dissmissile;

  DialogRequest(
      {this.title,
      this.description,
      this.buttonTitle,
      this.content,
      this.dissmissile});
}
