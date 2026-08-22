import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../models/call_record.dart';

/// Columna de nombre + subtítulo (ícono de dirección + tipo de
/// llamada), la parte central de cada fila.
///
/// PASO 5 — se extrae de call_row_placeholder.dart porque ese
/// build ya pasaba de 60 líneas. Sin cambios de estilo respecto
/// al original.
class CallInfo extends StatelessWidget {
  final CallRecord call;
  const CallInfo({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    final nameColor = call.missed ? AppColors.textMissed : AppColors.textPrimary;
    // El color rojo de "perdida" tiñe solo el nombre; la flecha de
    // dirección se queda en gris siempre (así aparece en la
    // referencia incluso en las filas con nombre rojo — Paso 4:
    // detalle que solo se ve comparando de cerca).
    const arrowColor = AppColors.textSecondary;
    final arrowIcon = call.direction == CallDirection.incoming
        ? Icons.south_west
        : Icons.north_east;
    final subtitle =
        call.repeatCount != null ? '${call.type} (${call.repeatCount})' : call.type;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          call.name,
          style: TextStyle(
            color: nameColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Row(
          children: [
            Icon(arrowIcon, size: 12, color: arrowColor),
            const SizedBox(width: AppSpacing.xs),
            Text(
              subtitle,
              style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}