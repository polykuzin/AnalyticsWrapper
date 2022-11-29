//
//  _AnalyticsRevenueEvent.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

/// A special protocol designed only to send revenue to your analytics service. This is possible only if your service supports this feature. Many services, for example, **Firebase** do not offer such functionality
public protocol _AnalyticsRevenueEvent {
    
    /// the id of your product that brought you profit. I recommend writing a meaningful and understandable id that will be understandable to you after several iterations of purchases. With such ids, it will be easier for you to conduct A/B tests and find the best solutions.
    var id : String { get set }
    
    /// Just a price of your product. Please check the correctness of sending with an accuracy of 100 - there may be problems, depending on the system.
    var price : String { get set }
    
    /// Just a currency of your product. For example: USD, RUB.
    var currency : String { get set }
    
    /// The number of units of the product when buying. The default value is 1.
    var quantity : Int { get set }
}
