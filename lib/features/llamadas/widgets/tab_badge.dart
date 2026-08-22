import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

/// Círculo rojo con contador, superpuesto sobre el ícono de un tab.
///
/// PASO 5 — se extrae de tab_item_placeholder.dart porque ese build
/// ya pasaba de 60 líneas. Sin cambios de estilo respecto al original,
/// solo se movió a su propio widget.
class TabBadge extends StatelessWidget {
  final int count;
  const TabBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.badgeRed,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}