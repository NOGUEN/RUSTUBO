// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/core/base/base_view.dart';
import 'package:rutsubo/app/view/common/rutsubo_appbar.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/components/landing_background.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list.dart';
import 'package:rutsubo/global_setting/app_colors.dart';

class LandingPage extends BaseView<LandingPageController> {
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return RutsuboAppBar();
  }

  @override
  Widget body(BuildContext context) {
    scrollController.addListener(_scrollListener);
    return Stack(children: [
      Scrollbar(
        controller: scrollController,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              SizedBox(height: 30.w),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150.w),
                  child: LandingBackground(
                      content: LandingList(controller: controller))),
              Container(
                height: 500.w,
                width: double.infinity,
                color: AppColors.black,
              )
            ],
          ),
        ),
      ),
    ]);
  }

  _scrollListener() {
    controller.scrollPosition.value = scrollController.offset;
  }
}
