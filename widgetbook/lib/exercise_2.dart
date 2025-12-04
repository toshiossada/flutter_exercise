import 'package:flutter/material.dart';
import 'package:formfun_flutter_test/src/pages/exercise2/exercise2.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: Exercise2Page)
Widget buildExercise2(BuildContext context) {
  return const Exercise2Page();
}
