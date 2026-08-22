import 'package:flutter/material.dart';

import 'core/theme/app_colors.dart';
import 'features/llamadas/screens/llamadas_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const LlamadasScreen(),
    );
  }
}