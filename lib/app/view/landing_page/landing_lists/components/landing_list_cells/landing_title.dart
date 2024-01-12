import 'package:flutter/material.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list_cells.dart';
import 'package:rutsubo/global_setting/app_colors.dart';
import 'package:rutsubo/global_setting/app_string.dart';

class LandingTitle extends StatelessWidget {
  const LandingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: LandingMangaCell(
        height: 650,
        width: double.infinity,
        content: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                AppString.img_landing_title,
                fit: BoxFit.none,
                color: Colors.white.withOpacity(0.6),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            Center(
              child: Stack(
                children: <Widget>[
                  Text(
                    AppString.app_title,
                    style: TextStyle(
                      fontSize: 80,
                      fontFamily: 'JALNAN',
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = AppColors.black,
                    ),
                  ),
                  const Text(
                    AppString.app_title,
                    style: TextStyle(
                      fontSize: 80,
                      fontFamily: 'JALNAN',
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
