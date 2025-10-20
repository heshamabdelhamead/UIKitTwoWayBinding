//
//  ExtendTextField.swift
//  UIKitTwoWayBinding
//
//  Created by hesham abd elhamead on 20/10/2025.
//

import Foundation
import UIKit
import Combine

extension UITextField {
    func bind(
        to publisher: AnyPublisher<String, Never>,
        storeIn cancellables: inout Set<AnyCancellable>,
        onChange: @escaping (String) -> Void
    ){
       
        publisher
            .receive(on: RunLoop.main)
            .sink { [weak self] text in
                guard self?.text != text else { return }
                self?.text = text
            }
            .store(in: &cancellables)

        NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification, object: self)
            .compactMap { ($0.object as? UITextField)?.text }
            .sink(receiveValue: onChange)
            .store(in: &cancellables)
    }
}
