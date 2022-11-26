//
//  _AnalyticsEngine.swift
//
//
//  Created by polykuzin on 09/09/2022.
//

public protocol _AnalyticsEngine {
    
    func reportEvent(name: String, metadata: [String: AnyHashable]?)
    
    func reportError(id: String, message: String, metadata: [String: AnyHashable]?)

    func reportRevenue(id: String, price: String, currency: String, quantity: Int)
    
    func reportProfile(profileInfo: _ProfileInfo, with: Any)
    
    func reportECommerce(event: _ECommerceEvent)
}
