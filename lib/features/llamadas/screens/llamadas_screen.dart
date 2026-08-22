import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../models/call_record.dart';
import '../widgets/top_bar_placeholder.dart';
import '../widgets/call_row_placeholder.dart';
import '../widgets/bottom_bar_placeholder.dart';

/// PASO 2 — Contenido real sobre la estructura ya armada en el Paso 1.
/// La pantalla solo organiza el layout y pasa los datos; el detalle
/// de cada pieza vive en su propio widget dentro de widgets/.
class LlamadasScreen extends StatelessWidget {
  const LlamadasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const TopBarPlaceholder(),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: sampleCalls.length,
                separatorBuilder: (_, __) => const Divider(
                  height: 1,
                  thickness: 0.5,
                  color: AppColors.divider,
                  indent: 88,
                ),
                itemBuilder: (context, index) =>
                    CallRowPlaceholder(call: sampleCalls[index]),
              ),
            ),
            const BottomBarPlaceholder(),
          ],
        ),
      ),
    );
  }
}