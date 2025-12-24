import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_deer/home/splash_page.dart';
import 'package:flutter_deer/home/home_page.dart';
import 'package:flutter_deer/home/webview_page.dart';
import 'package:flutter_deer/routers/not_found_page.dart' as nf;
import 'package:flutter_deer/shop/page/shop_page.dart';
import 'package:flutter_deer/shop/page/shop_setting_page.dart';
import 'package:flutter_deer/shop/page/message_page.dart';
import 'package:flutter_deer/shop/page/freight_config_page.dart';
import 'package:flutter_deer/shop/page/select_address_page.dart';
import 'package:flutter_deer/shop/page/input_text_page.dart';
import 'package:flutter_deer/login/page/login_page.dart';
import 'package:flutter_deer/login/page/register_page.dart';
import 'package:flutter_deer/login/page/sms_login_page.dart';
import 'package:flutter_deer/login/page/reset_password_page.dart';
import 'package:flutter_deer/login/page/update_password_page.dart';
import 'package:flutter_deer/goods/page/goods_page.dart';
import 'package:flutter_deer/goods/page/goods_edit_page.dart';
import 'package:flutter_deer/goods/page/goods_search_page.dart';
import 'package:flutter_deer/goods/page/goods_size_page.dart';
import 'package:flutter_deer/goods/page/goods_size_edit_page.dart';
import 'package:flutter_deer/goods/page/qr_code_scanner_page.dart';
import 'package:flutter_deer/order/page/order_page.dart';
import 'package:flutter_deer/order/page/order_info_page.dart';
import 'package:flutter_deer/order/page/order_search_page.dart';
import 'package:flutter_deer/order/page/order_track_page.dart';
import 'package:flutter_deer/statistics/page/order_statistics_page.dart';
import 'package:flutter_deer/statistics/page/goods_statistics_page.dart';
import 'package:flutter_deer/store/page/store_audit_page.dart';
import 'package:flutter_deer/store/page/store_audit_result_page.dart';
import 'package:flutter_deer/setting/page/setting_page.dart';
import 'package:flutter_deer/setting/page/about_page.dart';
import 'package:flutter_deer/setting/page/theme_page.dart';
import 'package:flutter_deer/setting/page/locale_page.dart';
import 'package:flutter_deer/setting/page/account_manager_page.dart';
import 'package:flutter_deer/account/page/account_page.dart';
import 'package:flutter_deer/account/page/account_record_list_page.dart';
import 'package:flutter_deer/account/page/add_withdrawal_account_page.dart';
import 'package:flutter_deer/account/page/bank_select_page.dart';
import 'package:flutter_deer/account/page/city_select_page.dart';
import 'package:flutter_deer/account/page/withdrawal_account_list_page.dart';
import 'package:flutter_deer/account/page/withdrawal_account_page.dart';
import 'package:flutter_deer/account/page/withdrawal_page.dart';
import 'package:flutter_deer/account/page/withdrawal_password_page.dart';
import 'package:flutter_deer/account/page/withdrawal_record_list_page.dart';
import 'package:flutter_deer/account/page/withdrawal_result_page.dart';
import 'package:common_utils/common_utils.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (_, __) => const SplashPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (_, __) => const Home(),
      ),
      GoRoute(
        path: '/webView',
        builder: (_, state) {
          final qp = state.uri.queryParameters;
          final title = qp['title'] ?? '';
          final url = qp['url'] ?? '';
          return WebViewPage(title: title, url: url);
        },
      ),
      // Shop
      GoRoute(path: '/shop', builder: (_, __) => const ShopPage()),
      GoRoute(path: '/shop/shopSetting', builder: (_, __) => const ShopSettingPage()),
      GoRoute(path: '/shop/message', builder: (_, __) => const MessagePage()),
      GoRoute(path: '/shop/freightConfig', builder: (_, __) => const FreightConfigPage()),
      GoRoute(path: '/shop/addressSelect', builder: (_, __) => const AddressSelectPage()),
      GoRoute(
        path: '/shop/inputText',
        builder: (_, state) {
          final args = state.extra as InputTextPageArgumentsData?;
          return InputTextPage(
            title: args?.title ?? '',
            hintText: args?.hintText ?? '',
            content: args?.content ?? '',
            keyboardType: args?.keyboardType,
          );
        },
      ),
      // Login
      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      GoRoute(path: '/login/register', builder: (_, __) => const RegisterPage()),
      GoRoute(path: '/login/smsLogin', builder: (_, __) => const SMSLoginPage()),
      GoRoute(path: '/login/resetPassword', builder: (_, __) => const ResetPasswordPage()),
      GoRoute(path: '/login/updatePassword', builder: (_, __) => const UpdatePasswordPage()),
      // Goods
      GoRoute(path: '/goods', builder: (_, __) => const GoodsPage()),
      GoRoute(
        path: '/goods/edit',
        builder: (_, state) {
          final qp = state.uri.queryParameters;
          final isAdd = qp['isAdd'] == 'true';
          final isScan = qp['isScan'] == 'true';
          final url = EncryptUtil.decodeBase64(qp['url'] ?? '');
          final heroTag = qp['heroTag'] ?? 'heroTag';
          return GoodsEditPage(isAdd: isAdd, isScan: isScan, goodsImageUrl: url, heroTag: heroTag);
        },
      ),
      GoRoute(path: '/goods/search', builder: (_, __) => const GoodsSearchPage()),
      GoRoute(path: '/goods/size', builder: (_, __) => const GoodsSizePage()),
      GoRoute(path: '/goods/sizeEdit', builder: (_, __) => const GoodsSizeEditPage()),
      GoRoute(path: '/goods/qrCodeScanner', builder: (_, __) => const QrCodeScannerPage()),
      // Order
      GoRoute(path: '/order', builder: (_, __) => const OrderPage()),
      GoRoute(path: '/order/info', builder: (_, __) => const OrderInfoPage()),
      GoRoute(path: '/order/search', builder: (_, __) => const OrderSearchPage()),
      GoRoute(path: '/order/track', builder: (_, __) => const OrderTrackPage()),
      // Statistics
      GoRoute(
        path: '/statistics/order',
        builder: (_, state) {
          final index = int.tryParse(state.uri.queryParameters['index'] ?? '0') ?? 0;
          return OrderStatisticsPage(index);
        },
      ),
      GoRoute(path: '/statistics/goods', builder: (_, __) => const GoodsStatisticsPage()),
      // Store
      GoRoute(path: '/store/audit', builder: (_, __) => const StoreAuditPage()),
      GoRoute(path: '/store/auditResult', builder: (_, __) => const StoreAuditResultPage()),
      // Setting
      GoRoute(path: '/setting', builder: (_, __) => const SettingPage()),
      GoRoute(path: '/setting/about', builder: (_, __) => const AboutPage()),
      GoRoute(path: '/setting/theme', builder: (_, __) => const ThemePage()),
      GoRoute(path: '/setting/locale', builder: (_, __) => const LocalePage()),
      GoRoute(path: '/setting/accountManager', builder: (_, __) => const AccountManagerPage()),
      // Account
      GoRoute(path: '/account', builder: (_, __) => const AccountPage()),
      GoRoute(path: '/account/recordList', builder: (_, __) => const AccountRecordListPage()),
      GoRoute(path: '/account/addWithdrawal', builder: (_, __) => const AddWithdrawalAccountPage()),
      GoRoute(
        path: '/account/bankSelect',
        builder: (_, state) {
          final type = int.tryParse(state.uri.queryParameters['type'] ?? '0') ?? 0;
          return BankSelectPage(type: type);
        },
      ),
      GoRoute(path: '/account/citySelect', builder: (_, __) => const CitySelectPage()),
      GoRoute(path: '/account/withdrawalAccountList', builder: (_, __) => const WithdrawalAccountListPage()),
      GoRoute(path: '/account/withdrawalAccount', builder: (_, __) => const WithdrawalAccountPage()),
      GoRoute(path: '/account/withdrawal', builder: (_, __) => const WithdrawalPage()),
      GoRoute(path: '/account/withdrawalPassword', builder: (_, __) => const WithdrawalPasswordPage()),
      GoRoute(path: '/account/withdrawalRecordList', builder: (_, __) => const WithdrawalRecordListPage()),
      GoRoute(path: '/account/withdrawalResult', builder: (_, __) => const WithdrawalResultPage()),
    ],
    errorBuilder: (_, __) => const nf.NotFoundPage(),
  );
}
