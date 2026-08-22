import 'package:flutter/material.dart';

import 'tab_badge.dart';

/// Ícono de un tab: con círculo de fondo (variantes "Llamadas" y
/// "Contactos") o suelto (variante "Teclado"), con badge de
/// contador opcional superpuesto en la esquina.
///
/// PASO 5 — se extrae de tab_item_placeholder.dart porque ese build
/// ya pasaba de 60 líneas. Sin cambios de estilo respecto al original.
class TabIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color? background;
  final int? badgeCount;

  const TabIcon({
    super.key,
    required this.icon,
    required this.iconColor,
    this.background,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidget = background != null
        ? Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: background, shape: BoxShape.circle),
            child: Icon(icon, size: 19, color: iconColor),
          )
        : Icon(icon, size: 26, color: iconColor);

    if (badgeCount == null) return iconWidget;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        iconWidget,
        Positioned(top: -4, right: -6, child: TabBadge(count: badgeCount!)),
      ],
    );
  }
}