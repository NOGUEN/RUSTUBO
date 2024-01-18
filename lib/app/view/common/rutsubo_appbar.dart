import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RutsuboAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RutsuboAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 4.w))),
      height: 100.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppBarButton(
            title: '멘토/운영진',
            onTapFunction: () {},
          ),
          SizedBox(width: 40.w),
          AppBarButton(
            title: 'RUTSUBO 연구실',
            onTapFunction: () {},
          ),
          SizedBox(width: 40.w),
          AppBarButton(
            title: '신청하기',
            onTapFunction: () {},
          ),
          SizedBox(width: 40.w),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.h);
}

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.title,
    required this.onTapFunction,
  });

  final String title;
  final void Function() onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
