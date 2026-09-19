import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<double> logoFadeAnimation;
  late Animation<double> logoScaleAnimation;
  late Animation<Offset> logoSlideAnimation;

  late Animation<double> textFadeAnimation;
  late Animation<Offset> textSlideAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    // =========================
    // Logo Animation
    // =========================

    // اللوجو يظهر تدريجيًا
    logoFadeAnimation = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.0, 0.45, curve: Curves.easeOut),
    );

    // اللوجو يبدأ أصغر شوية ثم يكبر لحجمه الطبيعي
    logoScaleAnimation = Tween<double>(begin: 0.75, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.65, curve: Curves.easeOutBack),
      ),
    );

    // اللوجو يدخل من تحت لفوق
    logoSlideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.35), end: Offset.zero).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.0, 0.65, curve: Curves.easeOutCubic),
          ),
        );

    // =========================
    // Text Animation
    // =========================

    // النص يظهر بعد بداية ظهور اللوجو
    textFadeAnimation = CurvedAnimation(
      parent: animationController,
      curve: const Interval(0.45, 0.85, curve: Curves.easeOut),
    );

    // النص يدخل من تحت لفوق
    textSlideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.4), end: Offset.zero).animate(
          CurvedAnimation(
            parent: animationController,
            curve: const Interval(0.45, 0.9, curve: Curves.easeOutCubic),
          ),
        );

    // تشغيل الـ Animation
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // =========================
        // Logo
        // =========================
        FadeTransition(
          opacity: logoFadeAnimation,
          child: SlideTransition(
            position: logoSlideAnimation,
            child: ScaleTransition(
              scale: logoScaleAnimation,
              child: Image.asset(AssetsData.KLogo),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // =========================
        // Text
        // =========================
        FadeTransition(
          opacity: textFadeAnimation,
          child: SlideTransition(
            position: textSlideAnimation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:bookly/Features/Splash/presentation/Views/widget/text_animation.dart';
// import 'package:bookly/core/utils/assets.dart';
// import 'package:flutter/material.dart';

// class SplashViewBody extends StatefulWidget {
//   const SplashViewBody({super.key});

//   @override
//   State<SplashViewBody> createState() => _SplashViewBodyState();
// }

// class _SplashViewBodyState extends State<SplashViewBody>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animationController;
//   late Animation<Offset> slidanim;

//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 3),
//     );
//     slidanim = Tween<Offset>(
//       begin: Offset(0, 10),
//       end: Offset.zero,
//     ).animate(animationController);
//     animationController.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.stretch,

//       children: [
//         Image.asset(AssetsData.KLogo),
//         TextAnimation(slidanim: slidanim),
//       ],
//     );
//   }
// }
