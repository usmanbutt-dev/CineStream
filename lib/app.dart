/// CineStream — Application root widget.
///
/// Sets up the [MaterialApp.router] with the dark theme, go_router,
/// and global configuration. Theme accent color and AMOLED mode are
/// driven by [themeSettingsProvider].
library;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'features/settings/settings_screen.dart';

class CineStreamApp extends ConsumerWidget {
  const CineStreamApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ts = ref.watch(themeSettingsProvider);

    return MaterialApp.router(
      title: 'CineStream',
      debugShowCheckedModeBanner: false,

      // ── Theme ──
      theme: CineTheme.dark(
        accentSeed: ts.accentColor,
        amoled: ts.amoledMode,
      ),
      darkTheme: CineTheme.dark(
        accentSeed: ts.accentColor,
        amoled: ts.amoledMode,
      ),
      themeMode: ThemeMode.dark,

      // ── Router ──
      routerConfig: appRouter,
    );
  }
}
