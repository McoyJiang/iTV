import 'package:ai_tv/bean/HomPageBean.dart';
import 'package:ai_tv/bean/MediaDetailsBean.dart';
import 'package:ai_tv/pages/VideoScreen.dart';
import 'package:ai_tv/pages/details/RjDetailPage.dart';
import 'package:ai_tv/widgets/Demo.dart';
import 'package:flutter/material.dart';

goToMediaDetails(BuildContext context, HomeListEntity _entry) {
  _pushWidgetWithFade(context, RjDetailPage(_entry));
}

goToDownloadSelection(BuildContext context, MediaDetailsResponse response) {
  _pushWidgetWithFade(context, Demo(response));
}

goToVideoScreen(BuildContext context, MediaDetailsResponse _response,
    MediaSeriesListItem _item) {
  //_pushWidgetWithFade(context, VideoScreen(_response, _item));
//  _pushWidgetWithFade(context, Demo());
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return VideoScreen(_response, _item);
  }));
}

_pushWidgetWithFade(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
        pageBuilder: (BuildContext context, Animation animation,
            Animation secondaryAnimation) {
          return widget;
        }),
  );
}
