//
//  _AnalyticsError.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

/// A special protocol designed only to be send errors to your analytics service. This is possible only if your service supports this feature. Many services, for example,  **Firebase** do not offer such functionality
public protocol _AnalyticsError {
    
    /// Error id in your system. I recommend writing meaningful and understandable IDs that explicitly point to the application, module, and specific functionality in the application.
    var id : String { get set }
    
    /// Messages with details about the error received - here I suggest writing a specific method in which the error occurred or the events that occurred immediately before it.
    var message : String { get set }
    
    /// Some additional information about the error. For example, you can transmit information about the quality of the Internet connection, the data that the user gave or did not give the application to use, the API version or the server host.
    var metadata : [String: AnyHashable]? { get set }
}
