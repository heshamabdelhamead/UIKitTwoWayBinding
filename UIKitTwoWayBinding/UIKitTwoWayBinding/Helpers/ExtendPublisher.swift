//
//  ExtendPublisher.swift
//  UIKitTwoWayBinding
//
//  Created by hesham abd elhamead on 20/10/2025.
//

import Foundation
import Combine

// i didn't use this in this example 
extension Published.Publisher {
    var anyPublisher: AnyPublisher<Output, Failure> { eraseToAnyPublisher() }
}
