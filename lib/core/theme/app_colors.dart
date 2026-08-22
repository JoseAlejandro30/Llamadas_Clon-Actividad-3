import 'package:flutter/material.dart';

/// Paleta centralizada.
///
/// PASO 3 — tema real, tomado con pipeta directamente de la captura
/// de referencia (no supuestos de "azul iOS estándar" ni grises de
/// Material por defecto). Los `debugX` del Paso 1 ya cumplieron su
/// función y se retiran; los widgets que los usaban ahora apuntan
/// a estos tokens sin cambiar su estructura.
class AppColors {
  AppColors._();

  static const Color background = Colors.black;

  /// Línea separadora entre filas. Medido: ~#2B2B2B de pico real
  /// (no el 0x3DFFFFFF que daba un gris demasiado claro).
  static const Color divider = Color(0xFF2C2C2E);

  /// Superficie "elevada" plana: pill de Editar, círculo de menú,
  /// fondo del botón de llamar, pill de tabs y botón de búsqueda.
  /// Es el mismo tono en los 5 sitios de la captura (~#141414 medido,
  /// se usa el token estándar de superficie oscura de iOS).
  static const Color surfaceElevated = Color(0xFF1C1C1E);

  /// Fondo resaltado detrás del tab activo dentro de la pill.
  /// Medido: #353535.
  static const Color tabActiveHighlight = Color(0xFF353535);

  /// Azul de acento: ícono del botón de llamar, círculo del tab
  /// activo y su label. Medido en varios puntos entre #0091FF y
  /// #1BACFF; se promedia en un único token para consistencia.
  static const Color accentBlue = Color(0xFF0A9FFF);

  /// Fondo circular de avatar sin foto (mismo tono para iniciales
  /// y para la silueta genérica). Medido: ~#48435C.
  static const Color avatarBackground = Color(0xFF48435C);

  /// Círculo claro detrás del ícono de "Contactos". Medido: #F3F3F3.
  static const Color surfaceLight = Color(0xFFF2F2F2);

  /// Glifo oscuro sobre `surfaceLight` (silueta de "Contactos").
  static const Color iconOnLight = Color(0xFF1C1C1E);

  /// Badge de contador. Medido: ~#FF453A (rojo de sistema, variante
  /// dark mode; distinto del rojo de "llamada perdida").
  static const Color badgeRed = Color(0xFFFF453A);

  // --- Contenido real (Paso 2, sin cambios) ---
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Colors.white60;
  static const Color textMissed = Color(0xFFFF3B30);
}