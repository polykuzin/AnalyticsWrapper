//
//  _AnalyticsEngine.swift
//
//
//  Created by polykuzin on 09/09/2022.
//

import Foundation

/// A public protocol of AnalyticsEngine stuff. There is no basic implementation, although the approach has been tested with different analytics systems, including **Yandex AppMetrica**, **Firebase Analytics**, and **Adapty** (only for filling out the user profile).
///
/// Each analytics engine has its own characteristics. When you implement a class for a specific engine, be careful - some engines do not accept all data types as a parameter.
/// Some accept only certain ones, for example, only Strings. Also, in some engines, for example, Firebase, there are no separate methods, for example, for implementing errors, but it is still better to implement this method separately so that there is an explicit declaration of sending an error in your application code.
@objc
public protocol _AnalyticsEngine {
    
    /// A regular function, reporting any event in your app, be carefull to use this - every analytics enging
    /// - Parameters:
    ///   - name: Name of your event. I strongly recommend using clear and understandable names, by which it will be immediately possible to understand where exactly the event occurred - further analysis of analytics will be much simpler.
    ///   - metadata: Some additional information about the event. For example, on the payment screens, when sending the "route built" event, you can send information about point A and point B, the time of route construction and the time of construction in milliseconds.
    func reportEvent(name: String, metadata: [String: AnyHashable]?)
    
    /// A special function designed only to send errors to your analytics service. This is possible only if your service supports this feature. Many services, for example,  **Firebase** do not offer such functionality
    /// - Parameters:
    ///   - id: Error id in your system. I recommend writing meaningful and understandable IDs that explicitly point to the application, module, and specific functionality in the application.
    ///   - message: Messages with details about the error received - here I suggest writing a specific method in which the error occurred or the events that occurred immediately before it.
    ///   - metadata: Some additional information about the error. For example, you can transmit information about the quality of the Internet connection, the data that the user gave or did not give the application to use, the API version or the server host.
    @objc
    optional func reportError(id: String, message: String, metadata: [String: AnyHashable]?)

    /// A special function designed only to send revenue to your analytics service. This is possible only if your service supports this feature. Many services, for example, **Firebase** do not offer such functionality
    /// - Parameters:
    ///   - id: the id of your product that brought you profit. I recommend writing a meaningful and understandable id that will be understandable to you after several iterations of purchases. With such ids, it will be easier for you to conduct A/B tests and find the best solutions.
    ///   - price: Just a price of your product. Please check the correctness of sending with an accuracy of 100 - there may be problems, depending on the system.
    ///   - currency: Just a currency of your product. For example: USD, RUB.
    ///   - quantity: The number of units of the product when buying. The default value is 1.
    @objc
    optional func reportRevenue(id: String, price: String, currency: String, quantity: Int)
    
    /// A special function designed only to send revenue to your analytics service. This is possible only if your service supports this feature. Many services do not offer such functionality
    /// - Parameters:
    ///   - profileInfo: Key from **_ProfileInfo** enum - you can can extend it, if you want. This approach was chosen due to the fact that many fanatic systems provide special methods for some preset values.
    ///   - with: Value of -YOUR-WANTED-TYPE- to send to analytics service
    @objc
    optional func reportProfile(profileInfo: _ProfileInfo, with: Any)
    
    // TODO: Make it optional
//    func reportECommerce(event: _ECommerceEvent)
}
