import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';

/// "Editar" (pill) — título — botón de menú (círculo)
class TopBarPlaceholder extends StatelessWidget {
  const TopBarPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 72,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.surfaceElevated,
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Text(
              'Editar',
              style: TextStyle(color: AppColors.textPrimary, fontSize: 14),
            ),
          ),
          const Text(
            'Llamadas',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.surfaceElevated,
              shape: BoxShape.circle,
            ),
            // El ícono real es de líneas decrecientes (filtro/orden),
            // no un "menu" de tres líneas iguales.
            child: const Icon(Icons.filter_list, color: AppColors.textPrimary, size: 20),
          ),
        ],
      ),
    );
  }
}
