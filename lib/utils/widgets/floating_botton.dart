import 'package:flutter/material.dart';
import 'package:todo/utils/constants.dart';

FloatingActionButton addTodoBotton({required void Function()? addFunction}) {
  return FloatingActionButton(
    backgroundColor: AppConstant.kBKDark,
    onPressed: addFunction,
    child: const Icon(Icons.add),
  );
}
