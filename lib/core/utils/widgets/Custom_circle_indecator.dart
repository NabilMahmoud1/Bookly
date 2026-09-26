import 'dart:math' as math;

import 'package:flutter/material.dart';

class PremiumCircularIndicator extends StatefulWidget {
  const PremiumCircularIndicator({
    super.key,
    this.progress = 0.75,
    this.size = 180,
  });

  final double progress;
  final double size;

  @override
  State<PremiumCircularIndicator> createState() =>
      _PremiumCircularIndicatorState();
}

class _PremiumCircularIndicatorState extends State<PremiumCircularIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    _animation = Tween<double>(
      begin: 0,
      end: widget.progress,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        final progress = _animation.value;

        return SizedBox(
          width: widget.size,
          height: widget.size,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // الـ Glow اللي حوالين الدائرة
              Container(
                width: widget.size * .82,
                height: widget.size * .82,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.cyanAccent.withOpacity(.18),
                      blurRadius: 35,
                      spreadRadius: 5,
                    ),
                  ],
                ),
              ),

              // الدائرة نفسها
              CustomPaint(
                size: Size(widget.size, widget.size),
                painter: _CircularProgressPainter(progress: progress),
              ),

              // الرقم اللي في النص
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${(progress * 100).round()}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Completed',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.55),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double progress;

  _CircularProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final radius = size.width / 2 - 14;

    // الخلفية بتاعة الدائرة
    final backgroundPaint = Paint()
      ..color = Colors.white.withOpacity(.08)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12;

    canvas.drawCircle(center, radius, backgroundPaint);

    // الـ Gradient
    final gradient = SweepGradient(
      startAngle: -math.pi / 2,
      endAngle: 3 * math.pi / 2,
      colors: const [
        Colors.cyanAccent,
        Colors.blueAccent,
        Colors.purpleAccent,
        Colors.cyanAccent,
      ],
    );

    final progressPaint = Paint()
      ..shader = gradient.createShader(
        Rect.fromCircle(center: center, radius: radius),
      )
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12
      ..strokeCap = StrokeCap.round;

    // خط الـ Progress
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2,
      2 * math.pi * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _CircularProgressPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
