import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_hero/home_page.dart';

class AnimatedTransition extends StatefulWidget {
  const AnimatedTransition({Key? key}) : super(key: key);

  @override
  State<AnimatedTransition> createState() => _AnimatedTransitionState();
}

class _AnimatedTransitionState extends State<AnimatedTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutQuint,
    );

    _heightAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.1, end: 0.3),
        weight: 20.0,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.3, end: 0.6),
        weight: 30.0,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.6, end: 1.0),
        weight: 50.0,
      ),
    ]).animate(_controller);

    _controller.forward().then((_) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          pageBuilder: (_, __, ___) => const HomePage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Hero(
          tag: 'get-started-button',
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                width: MediaQuery.of(context).size.width *
                    (0.5 + _scaleAnimation.value * 0.5),
                height:
                    MediaQuery.of(context).size.height * _heightAnimation.value,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.circular(20 * (1 - _scaleAnimation.value)),
                ),
                child: Opacity(
                  opacity: 1 - _scaleAnimation.value,
                  child: const Center(
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
