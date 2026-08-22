/// Dirección de la llamada: entrante (↙) o saliente (↗).
enum CallDirection { incoming, outgoing }

/// Contenido real de una fila de la lista (Paso 2).
/// No incluye nada de estilo/color final: eso vive en los widgets,
/// que lo resuelven a partir del tema en el Paso 3.
class CallRecord {
  final String? initials; // null => avatar con silueta genérica
  final String name;
  final String type; // 'celular' | 'Audio de WhatsApp' | 'teléfono'
  final CallDirection direction;
  final bool missed;
  final String day; // 'ayer' | 'miércoles' | ...
  final int? repeatCount; // ej. 2 => se muestra "(2)"

  const CallRecord({
    this.initials,
    required this.name,
    required this.type,
    required this.direction,
    required this.missed,
    required this.day,
    this.repeatCount,
  });
}

/// Datos tomados tal cual de la captura de referencia.
const List<CallRecord> sampleCalls = [
  CallRecord(
    initials: 'M',
    name: 'MAMI 💞',
    type: 'celular',
    direction: CallDirection.incoming,
    missed: true,
    day: 'ayer',
  ),
  CallRecord(
    initials: 'M',
    name: 'MAMI 💞',
    type: 'Audio de WhatsApp',
    direction: CallDirection.incoming,
    missed: true,
    day: 'ayer',
  ),
  CallRecord(
    initials: 'MH',
    name: 'Mi Hermana',
    type: 'celular',
    direction: CallDirection.incoming,
    missed: true,
    day: 'ayer',
  ),
  CallRecord(
    name: 'Hermana M',
    type: 'Audio de WhatsApp',
    direction: CallDirection.incoming,
    missed: false,
    day: 'ayer',
  ),
  CallRecord(
    initials: 'H',
    name: 'Hermano 🧑🏽',
    type: 'celular',
    direction: CallDirection.incoming,
    missed: true,
    day: 'miércoles',
  ),
  CallRecord(
    initials: 'AO',
    name: 'Andrea Ocampo',
    type: 'teléfono',
    direction: CallDirection.incoming,
    missed: false,
    day: 'miércoles',
  ),
  CallRecord(
    initials: 'AO',
    name: 'Andrea Ocampo',
    type: 'Audio de WhatsApp',
    direction: CallDirection.incoming,
    missed: true,
    day: 'miércoles',
  ),
  CallRecord(
    initials: 'AO',
    name: 'Andrea Ocampo',
    type: 'Audio de WhatsApp',
    direction: CallDirection.outgoing,
    missed: false,
    day: 'miércoles',
    repeatCount: 2,
  ),
  CallRecord(
    initials: 'MH',
    name: 'Mi Hermana',
    type: 'celular',
    direction: CallDirection.incoming,
    missed: false,
    day: 'miércoles',
  ),
];