//
//  SafeIndex.swift
//  
//
//  Created by polykuzin on 01.11.2022.
//

import Foundation

public extension Collection {
    
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
