# TCMPPSDK

TCMPPSDK is a Swift Package Manager package for the iOS platform.

## Requirements

- iOS 11.0+
- Xcode 12.0+
- Swift 5.5+

## Installation

### Swift Package Manager

Add the dependency in Xcode:

1. Select File > Add Packages...
2. Enter the repository URL: `https://github.com/TCMPP-Team/TCMPPSDK.git`
3. Choose a version rule (it is recommended to use Up to Next Major Version)
4. Click Add Package

### **Project settings**

After adding the SDK,  you need to make the following project settings in Xcode:

Select  **Build Settings** > **Linking** > **Other Linker Flags**, and add `-ObjC`.

## Usage

```swift
import TCMPPSDK

// Initialize the SDK

// Use other functions of the SDK
// ...
```

## Documentation

For detailed API documentation, please refer to the comments in the header file.

https://www.tencentcloud.com/document/product/1219/61447

## **Extension SDK**

Many APIs that require system authorization for development and use need to be pre-authorized in the info.plist file of the project. However, your app may not need this feature, so the SDK has been split into core and extension modules, eliminating unnecessary permissions and reducing the size of the core module.

The SDK engine provides both core and extension modules, allowing users to integrate based on their specific needs. 

More Info:https://www.tencentcloud.com/document/product/1219/61432

| name                   | repository URL                                           |
| ---------------------- | -------------------------------------------------------- |
| TCMPPExtScanCode       | https://github.com/TCMPP-Team/TCMPPExtScanCode.git       |
| TCMPPExtMedia          | https://github.com/TCMPP-Team/TCMPPExtMedia.git          |
| TCMPPExtLBS            | https://github.com/TCMPP-Team/TCMPPExtLBS.git            |
| TCMPPExtNetwork        | https://github.com/TCMPP-Team/TCMPPExtNetwork.git        |
| TCMPPExtMiniGame       | https://github.com/TCMPP-Team/TCMPPExtMiniGame.git       |
| TCSASExtGoogleAds      | https://github.com/TCMPP-Team/TCSASExtGoogleAds.git      |
| TCMPPExtBLE            | https://github.com/TCMPP-Team/TCMPPExtBLE.git            |
| TCMPPExtAuthentication | https://github.com/TCMPP-Team/TCMPPExtAuthentication.git |
| TCMPPExtCalendar       | https://github.com/TCMPP-Team/TCMPPExtCalendar.git       |
| TCMPPExtClipBoard      | https://github.com/TCMPP-Team/TCMPPExtClipBoard.git      |
| TCMPPExtContact        | https://github.com/TCMPP-Team/TCMPPExtContact.git        |
| TCMPPExtMDNS           | https://github.com/TCMPP-Team/TCMPPExtMDNS.git           |
| TCMPPExtMp3Encoder     | https://github.com/TCMPP-Team/TCMPPExtMp3Encoder.git     |



Select  **Build Settings** > **Linking** > **Other Linker Flags**, and add `-ObjC`.