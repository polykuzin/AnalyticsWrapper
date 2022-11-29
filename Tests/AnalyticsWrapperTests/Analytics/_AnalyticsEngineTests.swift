//
//  _AnalyticsEngineTests.swift
//  
//
//  Created by polykuzin on 28/11/2022.
//

import XCTest
import AnalyticsWrapper

fileprivate class MockedAnalyticsEngine : _AnalyticsEngine {
    
    func reportEvent(name: String, metadata: [String : AnyHashable]?) {
        
    }
    
    func reportError(id: String, message: String, metadata: [String : AnyHashable]?) {
        
    }
    
    func reportProfile(profileInfo: _AnalyticsProfileInfo, with: Any) {
        
    }
    
    func reportRevenue(id: String, price: String, currency: String, quantity: Int) {
        
    }
}

final class _AnalyticsEngineTests : XCTestCase {
    
}
