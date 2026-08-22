import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import 'tab_icon.dart';

/// Ícono — label, con las 3 variantes que aparecen en la referencia:
///  - activo ("Llamadas"): ícono sobre círculo de acento + badge +
///    resaltado detrás de todo el ítem + label del mismo acento.
///  - inactivo con círculo claro ("Contactos"): ícono oscuro sobre
///    círculo claro, label blanco.
///  - inactivo sin círculo ("Teclado"): ícono blanco suelto, label
///    blanco.
///
/// PASO 5 — el ícono (con su fondo circular y su badge) se movió a
/// tab_icon.dart / tab_badge.dart porque este build ya pasaba de
/// 60 líneas. Estructura y estilo quedan idénticos al original.
class TabItemPlaceholder extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color? iconBackground;
  final String label;
  final Color labelColor;
  final int? badgeCount;
  final bool active;

  const TabItemPlaceholder({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.labelColor,
    this.iconBackground,
    this.badgeCount,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    final content = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TabIcon(
          icon: icon,
          iconColor: iconColor,
          background: iconBackground,
          badgeCount: badgeCount,
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          label,
          style: TextStyle(
            color: labelColor,
            fontSize: 10,
            fontWeight: active ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );

    if (!active) return content;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: AppColors.tabActiveHighlight,
        borderRadius: BorderRadius.circular(24),
      ),
      child: content,
    );
  }
}
