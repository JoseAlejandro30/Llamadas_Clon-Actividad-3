import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

/// Círculo de avatar: iniciales si el contacto las tiene, si no una
/// silueta genérica (igual que "Hermana M" en la captura).
/// Se extrae aparte porque call_row_placeholder.dart ya iba a pasar
/// de 60 líneas si esto se quedaba inline.
class CallAvatar extends StatelessWidget {
  final String? initials;
  const CallAvatar({super.key, this.initials});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.avatarBackground,
        shape: BoxShape.circle,
      ),
      child: initials != null
          ? Text(
              initials!,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            )
          : const Icon(Icons.person, color: AppColors.textPrimary, size: 28),
    );
  }
}
