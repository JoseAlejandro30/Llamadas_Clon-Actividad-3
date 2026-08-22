import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/theme/app_colors.dart';
import 'tab_item_placeholder.dart';

/// Pill oscura con los 3 tabs (Llamadas / Contactos / Teclado).
///
/// PASO 5 — se extrae de bottom_bar_placeholder.dart porque ese
/// build ya pasaba de 60 líneas. Sin cambios de estilo ni de datos
/// respecto al original.
class TabsPill extends StatelessWidget {
  const TabsPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.surfaceElevated,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TabItemPlaceholder(
            icon: CupertinoIcons.clock_fill,
            iconColor: AppColors.textPrimary,
            iconBackground: AppColors.accentBlue,
            label: 'Llamadas',
            labelColor: AppColors.accentBlue,
            badgeCount: 8,
            active: true,
          ),
          TabItemPlaceholder(
            icon: CupertinoIcons.person_fill,
            iconColor: AppColors.iconOnLight,
            iconBackground: AppColors.surfaceLight,
            label: 'Contactos',
            labelColor: AppColors.textPrimary,
          ),
          TabItemPlaceholder(
            icon: Icons.apps,
            iconColor: AppColors.textPrimary,
            label: 'Teclado',
            labelColor: AppColors.textPrimary,
          ),
        ],
      ),
    );
  }
}