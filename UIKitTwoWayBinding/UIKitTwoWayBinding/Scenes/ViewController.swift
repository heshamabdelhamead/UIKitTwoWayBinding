//
//  ViewController.swift
//  UIKitTwoWayBinding
//
//  Created by hesham abd elhamead on 20/10/2025.
//

import UIKit
import Combine

class ViewController: UIViewController {
    var viewModel = ViewModel()
    var cancellables: Set<AnyCancellable> = []
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private  func setupView(){
        viewModel.text.sink(receiveValue: { [weak self] text in
            DispatchQueue.main.async{
                self?.label.text = text
            }
        })
        .store(in: &cancellables)
        textField.bind(to: viewModel.text.eraseToAnyPublisher() , storeIn: &cancellables) { [weak self]  value in
            self?.viewModel.text.value = value
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        viewModel.text.value = ""
    }
}

