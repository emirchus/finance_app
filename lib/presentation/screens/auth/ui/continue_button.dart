import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? child;
  final Widget? leading;
  final Widget? trailing;

  const ContinueButton({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
    this.leading,
    this.trailing,
  }) : assert(text != null || child != null, 'text or child must be provided');

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: Colors.transparent,
        minimumSize: const Size.fromHeight(48),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          side: BorderSide(color: Colors.black12),
        ),
        backgroundColor: Colors.white,
      ),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: leading ?? const SizedBox.shrink(),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 3,
            child: child ??
                Text(
                  text!,
                  textAlign: TextAlign.center,
                ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: trailing ?? const SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
