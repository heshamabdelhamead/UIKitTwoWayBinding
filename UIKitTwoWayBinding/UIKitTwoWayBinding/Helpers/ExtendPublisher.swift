//
//  ExtendPublisher.swift
//  UIKitTwoWayBinding
//
//  Created by hesham abd elhamead on 20/10/2025.
//

import Foundation
import Combine
extension Published.Publisher {
    var anyPublisher: AnyPublisher<Output, Failure> { eraseToAnyPublisher() }
}
