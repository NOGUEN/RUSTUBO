// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rutsubo/app/controller/landing_page_controller.dart';
import 'package:rutsubo/app/core/base/base_view.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/components/landing_background.dart';
import 'package:rutsubo/app/view/landing_page/landing_lists/landing_list.dart';
import 'package:rutsubo/global_setting/app_colors.dart';

class LandingPage extends BaseView<LandingPageController> {
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
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
              const SizedBox(height: 60),
              LandingBackground(content: LandingList(controller: controller)),
              Container(
                height: 500.w,
                width: double.infinity,
                color: AppColors.black,
              )
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: () {
            super.globalKey.currentState?.openEndDrawer();
          },
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: const BoxDecoration(
              color: AppColors.white,
            ),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.menu,
                  size: 36,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  @override
  Widget? endDrawer() {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Item1'),
          ),
        ],
      ),
    );
  }

  _scrollListener() {
    controller.scrollPosition.value = scrollController.offset;
  }
}
