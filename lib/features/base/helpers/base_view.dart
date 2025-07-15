import 'package:flutter/material.dart';
import 'package:store_app/core/extenstions/context_extenstion.dart';

mixin BaseView{
  void showToastMessage({required String message, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: context.colorScheme.outlineVariant,
        content: Text(
          message,style: context.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w500,
          color: context.colorScheme.onPrimary,
        ),
        )));
    }
}