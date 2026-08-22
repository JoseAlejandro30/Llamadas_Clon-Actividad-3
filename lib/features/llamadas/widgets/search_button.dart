import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

/// Botón circular de búsqueda, a la derecha de la pill de tabs.
///
/// PASO 5 — se extrae de bottom_bar_placeholder.dart porque ese
/// build ya pasaba de 60 líneas. Sin cambios de estilo respecto
/// al original.
class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.surfaceElevated,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.search, color: AppColors.textPrimary, size: 24),
    );
  }
}