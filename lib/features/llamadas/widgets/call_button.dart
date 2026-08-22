import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

/// Botón circular de llamar, al final de cada fila.
///
/// PASO 5 — se extrae de call_row_placeholder.dart porque ese
/// build ya pasaba de 60 líneas. Sin cambios de estilo respecto
/// al original.
class CallButton extends StatelessWidget {
  const CallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.surfaceElevated,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.call, color: AppColors.accentBlue, size: 16),
    );
  }
}