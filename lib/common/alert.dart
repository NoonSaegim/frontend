import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';

class Popup {

  onSuccess(BuildContext context, String title) {
    Alert(
      context: context,
      type: AlertType.success,
      title: title,
      buttons: [
        DialogButton(
          color: Colors.cyan,
          child: Text(
            "확인",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          width: MediaQuery.of(context).size.width * 0.3,
        )
      ],
    ).show();
  }

  onError(BuildContext context, String title) {
    Alert(
      context: context,
      type: AlertType.error,
      title: title,
      buttons: [
        DialogButton(
          color: Colors.red,
          child: Text(
            "확인",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          width: MediaQuery.of(context).size.width * 0.3,
        )
      ],
    ).show();
  }

  onWarning(BuildContext context, String title) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: title,
      buttons: [
        DialogButton(
          color: Colors.deepOrangeAccent,
          child: Text(
            "확인",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          width: MediaQuery.of(context).size.width * 0.3,
        )
      ],
    ).show();
  }
}

Popup alert = new Popup();
