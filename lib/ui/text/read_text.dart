import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget readText(
        {required String text,
        double? size,
        Color? color,
        TextAlign? align,
        FontWeight? fontWeight,
        bool? bold,
        String getFont = 'Inter',
        EdgeInsetsGeometry? padding,
        Color? decorationColor,
        bool underline = false}) =>
    Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: RichText(
        textAlign: align ?? TextAlign.start,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: text,
                style: GoogleFonts.getFont(getFont,
                    fontWeight: fontWeight ?? FontWeight.w400,
                    fontSize: size ?? 16,
                    color: color ?? Colors.white,
                    decoration: underline ? TextDecoration.underline : TextDecoration.none,
                    decorationColor: decorationColor ?? Colors.black)),
          ],
        ),
      ),
    );
