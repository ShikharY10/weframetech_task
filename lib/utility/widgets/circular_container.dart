import 'package:flutter/material.dart';

class CircularContainer extends StatefulWidget {
  
  final double height;
  final double width;
  final bool useAsButton;
  final void Function()? onTap;
  final Color? color;
  final Widget child;
  final double borderWidth;
  final Color borderColor;

  const CircularContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    this.useAsButton = false,
    this.onTap,
    this.color = Colors.white,
    this.borderWidth = 1.0,
    this.borderColor = Colors.black
  });

  @override
  State<CircularContainer> createState() => _CircularContainerState();
}

class _CircularContainerState extends State<CircularContainer> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.useAsButton,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            border: Border.all(
              width: widget.borderWidth,
              color: widget.borderColor
            )
          ),
          alignment: Alignment.center,
          child: widget.child
        )
      ),
    );
  }
}