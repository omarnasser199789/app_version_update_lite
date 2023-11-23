library app_version_update;

import 'package:app_version_update_lite/core/functions/fetch_version.dart';
import 'package:app_version_update_lite/data/models/app_version_data.dart';
import 'package:app_version_update_lite/data/models/app_version_result.dart';


class AppVersionUpdate {
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
