import UIKit

class NativeViewController: UIViewController {
    
    @IBAction private func showReactNativeScreenButtonTapped(_ sender: UIButton) {
        let viewController = ReactNativeViewController(componentName: "SharedReactNativeComponent")
        navigationController?.pushViewController(viewController, animated: true)
    }
}
