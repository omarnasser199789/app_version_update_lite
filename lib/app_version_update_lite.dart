library app_version_update_lite;

import 'package:app_version_update_lite/core/functions/fetch_version.dart';
import 'package:app_version_update_lite/data/models/app_version_data.dart';
import 'package:app_version_update_lite/data/models/app_version_result.dart';

class AppVersionUpdate {
  /// Checks for app update in stores, taking into account the local version.
  /// * ```appleId``` unique identifier in Apple Store, if null, we will use your package name.
  /// * ```playStoreId``` unique identifier in Play Store, if null, we will use your package name.
  /// * ```country```, region of store, if null, we will use 'us'.
  /// ## example
  /// ```dart
  /// await AppVersionUpdate.checkForUpdates(
  ///   appleId: '123456789',
  ///   playStoreId: 'com.example.app',
  ///   country: 'br')
  /// .then((data) async {
  ///    if (data.canUpdate!) {
  ///       //action...
  ///     });
  /// ```
  static Future<AppVersionResult> checkForUpdates({
    String? appleId,
    String? playStoreId,
    String? country = 'us',
  }) async {
    AppVersionData data = await fetchVersion(
        playStoreId: playStoreId, appleId: appleId, country: country);

    return AppVersionResult(
        canUpdate: data.canUpdate,
        storeUrl: data.storeUrl,
        storeVersion: data.storeVersion,
        platform: data.targetPlatform);
  }

}
