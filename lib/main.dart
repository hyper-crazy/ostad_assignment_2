import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'flag_card_ui.dart';

void main() {
  runApp(ResponsiveUI());
}

class ResponsiveUI extends StatefulWidget {
  const ResponsiveUI({super.key});

  @override
  State<ResponsiveUI> createState() => _ResponsiveUIState();
}

class _ResponsiveUIState extends State<ResponsiveUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.hindSiliguriTextTheme(),
        ),
        home: FlagCardUI());
  }
}

