//
//  _ProfileInfo.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

import Foundation

/// A special enum designed only to send revenue to your analytics service. This is possible only if your service supports this feature. Many services do not offer such functionality. Also - you can extend this enum with your own values&
/// - Parameters:
///   - profileInfo: Key from **_ProfileInfo** enum - you can can extend it, if you want. This approach was chosen due to the fact that many fanatic systems provide special methods for some preset values.
///   - with: Value of -YOUR-WANTED-TYPE- to send to analytics service
@objc
public enum _AnalyticsProfileInfo : Int {
    /// User Id in your system. I strongly recommend to use random sha256 string for this.
    case id
    
    /// The number of sessions for this user.
    case appLaunch
    
    /// Access level to your content. For example, you can use *premium* or *premium-plus*
    case accessLevel
    
    /// Do the your grand you to send notifications. Just true/false.
    case notifications
}
