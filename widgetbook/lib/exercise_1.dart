import 'package:flutter/material.dart';
import 'package:formfun_flutter_test/src/pages/exercise1/widgets/file_upload_cart_widget.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default', type: Exercise1, path: 'pages')
Widget buildExercise1(BuildContext context) {
  return const Exercise1();
}

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    final k = context.knobs;
    final progress = k.double.slider(
      label: 'Progresso',
      initialValue: 0,
      max: 1,
      min: 0,
    );
    final title = k.string(
      label: 'Título',
      initialValue: 'Uploading your files',
    );
    final subtitle = k.string(
      label: 'Subtítulo',
      initialValue: 'Please wait while we upload your files.',
    );

    return Scaffold(
      body: Center(
        child: FileUploadCardWidget(
          progress: progress,
          title: title,
          subtitle: subtitle,
        ),
      ),
    );
  }
}
