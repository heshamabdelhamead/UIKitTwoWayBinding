# UIKitTwoWayBinding
A simple demo project that shows how to implement two-way data binding between a UITextField and a ViewModel using Combine in UIKit.

This example demonstrates how UI changes update the ViewModel automatically, and how ViewModel updates reflect instantly on the UI — similar to SwiftUI’s @Published reactive updates, but done manually in UIKit.
## Features
    •    Demonstrates two-way binding between UITextField and ViewModel
    •    Uses Combine to observe and propagate changes
    •    Updates the UILabel automatically whenever the bound text changes
    •    Works reactively:
    •    Editing text in the text field updates the ViewModel
    •    Updating the ViewModel updates the text field and label
    
## Technologies Used
    •    UIKit for UI components
    •    Combine for reactive bindings
    •    MVVM pattern (Model–View–ViewModel)
    
## How It Works
    1.    When the user types in the UITextField, a Combine publisher (textDidChangeNotification) sends the new value to the ViewModel.
    2.    When the ViewModel’s @Published value changes, it publishes to all subscribers — updating the UITextField and UILabel.
    3.    Both sides stay in sync automatically, achieving two-way binding.
## Learnings
    •    How to use Combine publishers with UIKit controls.
    •    How to use @Published and AnyCancellable for data flow.
    •    How to implement two-way data flow in UIKit without SwiftUI.
## Author

Hesham Abdel-Hamid
iOS Developer — UIKit | SwiftUI | Combine | MVVM | VIPER
