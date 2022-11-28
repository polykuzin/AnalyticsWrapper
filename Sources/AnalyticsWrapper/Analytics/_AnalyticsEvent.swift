//
//  _AnalyticsEvent.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

public protocol _AnalyticsEvent {
    
    var name : String { get set }
    
    var metadata : [String: AnyHashable]? { get set }
}
