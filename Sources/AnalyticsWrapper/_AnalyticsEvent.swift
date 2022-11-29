//
//  _AnalyticsEvent.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

/// A regular protocol, used to be reported with any event in your app, be carefull to use this - every analytics enging
public protocol _AnalyticsEvent {
    
    /// Name of your event. I strongly recommend using clear and understandable names, by which it will be immediately possible to understand where exactly the event occurred - further analysis of analytics will be much simpler.
    var name : String { get set }
    
    /// Some additional information about the event. For example, on the payment screens, when sending the "route built" event, you can send information about point A and point B, the time of route construction and the time of construction in milliseconds.
    var metadata : [String: AnyHashable]? { get set }
}
