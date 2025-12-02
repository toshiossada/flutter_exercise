import 'package:flutter/material.dart';

import 'pages/exercise2/exercise2.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Exercise2Page());
  }
}
