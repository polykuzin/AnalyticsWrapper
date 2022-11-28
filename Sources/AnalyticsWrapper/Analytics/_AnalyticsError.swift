//
//  _AnalyticsError.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

public protocol _AnalyticsError {
    
    var id : String { get set }
    
    var message : String { get set }
    
    var metadata : [String: AnyHashable]? { get set }
}
