import 'package:flutter/material.dart';
import 'package:rutsubo/global_setting/app_colors.dart';

class LandingBackground extends StatelessWidget {
  const LandingBackground({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              width: MediaQuery.of(context).size.width - 80,
              height: 5000,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: AppColors.manuscriptBorder,
                ),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: AppColors.manuscriptBorder,
                      ),
                    ),
                    child: content,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
