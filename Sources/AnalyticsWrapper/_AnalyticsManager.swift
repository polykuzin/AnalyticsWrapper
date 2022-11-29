//
//  _AnalyticsManager.swift
//  
//
//  Created by polykuzin on 26/11/2022.
//

public protocol _AnalyticsManager {
    
    init(engines: [_AnalyticsEngine])
    
    func report(_ event: _AnalyticsEvent)
    
    func report(_ error: _AnalyticsError)
    
    func report(_ revenue: _AnalyticsRevenueEvent)
    
    func report(_ profileInfo: (key: _AnalyticsProfileInfo, value: Any))
}
