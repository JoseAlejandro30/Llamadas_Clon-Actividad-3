import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../models/call_record.dart';
import 'call.avatar.dart';
import 'call_info.dart';
import 'call_button.dart';

/// avatar — (nombre + subtítulo con ícono) — día — botón teléfono
///
/// PASO 5 — la columna de nombre/subtítulo y el botón de llamar se
/// movieron a call_info.dart y call_button.dart porque este build
/// ya pasaba de 60 líneas. Estructura y estilo quedan idénticos al
/// original.
class CallRowPlaceholder extends StatelessWidget {
  final CallRecord call;
  const CallRowPlaceholder({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.md,
      ),
      child: Row(
        children: [
          CallAvatar(initials: call.initials),
          const SizedBox(width: AppSpacing.md),
          Expanded(child: CallInfo(call: call)),
          const SizedBox(width: AppSpacing.md),
          Text(
            call.day,
            style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
          ),
          const SizedBox(width: AppSpacing.md),
          const CallButton(),
        ],
      ),
    );
  }
}