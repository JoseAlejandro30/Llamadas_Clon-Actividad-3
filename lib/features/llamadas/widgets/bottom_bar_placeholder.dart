import 'package:flutter/material.dart';

import '../../../core/theme/app_spacing.dart';
import 'tabs_pill.dart';
import 'search_button.dart';

/// Pill con 3 tabs — botón circular de búsqueda aparte.
///
/// PASO 5 — la pill de tabs y el botón de búsqueda se movieron a
/// tabs_pill.dart y search_button.dart porque este build ya pasaba
/// de 60 líneas. Estructura y estilo quedan idénticos al original.
class BottomBarPlaceholder extends StatelessWidget {
  const BottomBarPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.sm,
        AppSpacing.lg,
        AppSpacing.sm,
      ),
      child: Row(
        children: [
          const Expanded(child: TabsPill()),
          const SizedBox(width: AppSpacing.md),
          const SearchButton(),
        ],
      ),
    );
  }
}