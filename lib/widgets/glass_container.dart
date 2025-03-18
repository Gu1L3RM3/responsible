import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  const GlassContainer({
    super.key,
    required this.width,
    required this.height,
    this.child

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: width,
          height: height,
          child: Stack(
            children: [
              BackdropFilter(filter: 
              ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5
              ),
              child: Container(),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white.withValues(alpha: 0.13)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withValues(alpha: 0.25),
                      Colors.white.withValues(alpha:0.15)
                    ]
                  )
                ),
              ),
              Center(child: child,)
      
            ],
          ), 
               
        ),
      ),
    );
  }
}