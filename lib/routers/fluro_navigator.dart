import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routers.dart';

class NavigatorUtils {
  static void push(BuildContext context, String path,
      {bool replace = false, bool clearStack = false, Object? arguments}) {
    unfocus();
    final router = GoRouter.of(context);
    if (clearStack) {
      router.go(path, extra: arguments);
    } else if (replace) {
      router.replace<Object?>(path, extra: arguments);
    } else {
      router.push(path, extra: arguments);
    }
  }

  static void pushResult(BuildContext context, String path, void Function(Object) function,
      {bool replace = false, bool clearStack = false, Object? arguments}) {
    unfocus();
    final router = GoRouter.of(context);
    Future<Object?> fut;
    if (clearStack) {
      router.go(path, extra: arguments);
      fut = Future<Object?>.value(null);
    } else if (replace) {
      fut = router.replace<Object?>(path, extra: arguments);
    } else {
      fut = router.push<Object?>(path, extra: arguments);
    }
    fut.then((Object? result) {
      if (result == null) {
        return;
      }
      function(result);
    }).catchError((dynamic error) {
      debugPrint('$error');
    });
  }

  static void goBack(BuildContext context) {
    unfocus();
    Navigator.pop(context);
  }

  static void goBackWithParams(BuildContext context, Object result) {
    unfocus();
    Navigator.pop<Object>(context, result);
  }

  static void goWebViewPage(BuildContext context, String title, String url) {
    push(context, '${Routes.webViewPage}?title=${Uri.encodeComponent(title)}&url=${Uri.encodeComponent(url)}');
  }

  static void unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
