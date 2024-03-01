import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle txtNunitoBold(double tamnaho) {
  return GoogleFonts.nunitoSans(fontSize: tamnaho, fontWeight: FontWeight.w700);
}

TextStyle txtNunito300(double tamnaho) {
  return GoogleFonts.nunitoSans(fontSize: tamnaho, fontWeight: FontWeight.w300);
}

TextStyle txtNunitoBoldWhite(double tamanho) {
  return GoogleFonts.nunitoSans(
      fontSize: tamanho, color: Colors.white, fontWeight: FontWeight.w700);
}

TextStyle txtNunitoBoldRed(double tamanho) {
  return GoogleFonts.nunitoSans(
      fontSize: tamanho, color: Colors.red, fontWeight: FontWeight.w700);
}

