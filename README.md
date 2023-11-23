[![Star on GitHub](https://img.shields.io/github/stars/kauemurakami/app_version_update.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/omarnasser199789/app_version_update_lite)  

Retrieve version and url for local app update against store app
Android and iOS  


## [Omar Nasser](https://github.com/omarnasser199789)
<img src="https://avatars.githubusercontent.com/u/22509641?s=96&v=4" alt="Omar Nasser" width="50" height="50" style="border-radius: 50%;">

 [![GitHub](https://img.shields.io/badge/GitHub-gray)](https://github.com/omarnasser199789)
 [![LinkedIn](https://img.shields.io/badge/LinkedIn-blue)](https://www.linkedin.com/in/omar-mouhamad-nasser/)
 [![Portfolio](https://img.shields.io/badge/Portfolio-orange)](https://omar-nasser-portfolio.web.app/#/)

## Features

Compares local version with the respective store version for the purpose of detecting user-side version updates.

## Getting started

```
$ flutter pub add app_version_update_lite
```
or add in your dependencies
```
dependencies:
  app_version_update_lite: <latest>
```

to use this app you need to have the app hosted in stores.

To test, you can manually downgrade your pubspec.yaml from your ```version:``` , when you run your ```local version``` it will be different from the ```store version```

## Usage

Internet permission Android:
`<uses-permission android:name="android.permission.INTERNET" />`

Internet permission iOs:
`
<key>NSAppTransportSecurity</key>
<dict>
  <key>NSAllowsArbitraryLoads</key><true/>
</dict>
`

```dart
final appleId = '1234567890'; // If this value is null, its packagename will be considered
final playStoreId = 'com.example.app'; // If this value is null, its packagename will be considered
final country = 'br' // If this value is null 'us' will be the default value
await AppVersionUpdate.checkForUpdates(
            appleId: appleId, playStoreId: playStoreId, country: country)
        .then((data) async {
            print(data.storeUrl);
            print(data.storeVersion);
            if(data.canUpdate!){
             //here you can show any custom dialog.
            }
         });
```


## Additional information

| Next Updates                 | status      |
|------------------------------|-------------|
| Mandatory or optional update | released    |
| Create TestMode              | development |
| Handle Exceptions            | development |
| New options custom widgets   | released    |
| Automatic country detection  | released    |
| Modularize files             | listed      |

This project is at an initial level, more functions will be included as

So any suggestion and contribution is welcome.