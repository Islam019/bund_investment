import 'package:bund/core/themes/system_overlay_style.dart';
import 'package:bund/core/themes/themes.dart';
import 'package:bund/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const BundApp());
}

class BundApp extends StatelessWidget {
  const BundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemOverlayStyles.systemUiOverlayStyleLight,
      child: MaterialApp(
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
        title: 'bünd',
        theme: AppThemes.lightTheme,
      ),
    );
  }
}
