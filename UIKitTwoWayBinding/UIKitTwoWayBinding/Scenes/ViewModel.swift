//
//  ViewModel.swift
//  UIKitTwoWayBinding
//
//  Created by hesham abd elhamead on 20/10/2025.
//

import Foundation
import Combine

class ViewModel  {
    var text = CurrentValueSubject<String,Never>("Hello, World!")
// @Published   var text = "Hello, World!"
}
