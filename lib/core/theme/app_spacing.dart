/// Escala de espaciado en múltiplos de 4px.
/// Ningún EdgeInsets ni SizedBox se escribe con un número suelto:
/// siempre sale de acá. Esto es lo que pide el criterio de
/// "cero valores crudos" de los criterios de entrega.
class AppSpacing {
  AppSpacing._();

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double xxl = 32;
}