import 'dart:async';

import 'package:flutter/material.dart';

import '../models/dialog_request.dart';
import '../models/dialog_response.dart';

class DialogService {
  Function(DialogRequest)? _showDialogListener;
  Completer<DialogResponse>? _dialogCompleter;

  void registerDialogListener(Function(DialogRequest)? showDialogListener) {
    _showDialogListener = showDialogListener;
  }

  Future showDialog(
      {String? title,
      String? description,
      String buttonTitle = 'OK',
      required Widget child}) {
    _dialogCompleter = Completer<DialogResponse>();
    _showDialogListener!(DialogRequest(
      title: title,
      description: description,
      buttonTitle: buttonTitle,
      content: child,
    ));
    return _dialogCompleter!.future;
  }

  void dialogComplete(DialogResponse response) {
    _dialogCompleter!.complete(response);
    _dialogCompleter = null;
  }
}
