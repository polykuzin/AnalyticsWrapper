//
//  _AnalyticsRevenueEvent.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

public protocol _AnalyticsRevenueEvent {
    
    var id : String { get set }
    
    var price : String { get set }
    
    var currency : String { get set }
    
    var quantity : Int { get set }
}
