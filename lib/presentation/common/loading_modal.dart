import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';

class LoadingModal extends StatefulWidget {
  final Future Function() future;

  const LoadingModal({super.key, required this.future});

  static Future<void> show(BuildContext context, Future Function() future) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => LoadingModal(future: future),
    );
  }

  @override
  State<LoadingModal> createState() => _LoadingModalState();
}

class _LoadingModalState extends State<LoadingModal> with SingleTickerProviderStateMixin {
  StreamSubscription? _streamSubscription;

  late final _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  late final _animation = CurvedAnimation(
    curve: Curves.bounceIn,
    parent: _animationController,
  );

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _animationController.forward();
      _streamSubscription = widget.future().asStream().listen((event) {
        _animationController.reverse();
        Navigator.of(context).pop();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    _streamSubscription = null;
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        await _streamSubscription?.cancel();
        await _animationController.reverse();

        return true;
      },
      child: Container(
          width: size.width,
          height: size.height,
          color: Colors.black12,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) => Transform.scale(
              scale: _animation.value,
              child: child,
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
