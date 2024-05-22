import 'package:flutter/material.dart';

enum Breakpoint {
  xs,
  sm,
  md,
  lg,
  xl,
}

Breakpoint getBreakpoint(BuildContext context) {
  final double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth < 640) {
    return Breakpoint.xs;
  } else if (screenWidth < 768) {
    return Breakpoint.sm;
  } else if (screenWidth < 1024) {
    return Breakpoint.md;
  } else if (screenWidth < 1280) {
    return Breakpoint.lg;
  } else {
    return Breakpoint.xl;
  }
}
