// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
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
              LandingBackground(
                  content: LandingList(
                controller: controller,
              ))
            ],
          ),
        ),
      ),
      Obx(
        () => Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
            onTap: () {
              super.globalKey.currentState?.openEndDrawer();
            },
            child: Container(
              width: double.infinity,
              height: 60,
              color: AppColors.white
                  .withOpacity(controller.setOpacity(context).value),
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.menu,
                    size: 36,
                    color: AppColors.black
                        .withOpacity(controller.setOpacity(context).value),
                  ),
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
        children: <Widget>[
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
