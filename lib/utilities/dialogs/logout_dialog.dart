import 'package:flutter/material.dart';
import 'package:mynotes/utilities/generic_dialog.dart';

Future<bool> showLogoutDialog(
  BuildContext context,
) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Log out',
    content: 'Are you sure you want to log out?',
    optionsBuilder: () => {
      'cancel': false,
      'Log out': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
