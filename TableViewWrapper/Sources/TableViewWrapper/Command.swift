//
//  Command.swift
//  
//
//  Created by polykuzin on 01/11/2022.
//

import Foundation

public struct Command<T> {
    
    private var action: (T) -> Void
    
    public func perform(with value: T) {
        self.action(value)
    }
    
    public init(action: @escaping (T) -> Void) {
        self.action = action
    }
}
