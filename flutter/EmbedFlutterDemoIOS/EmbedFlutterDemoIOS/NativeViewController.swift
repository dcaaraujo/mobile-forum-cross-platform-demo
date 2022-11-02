import UIKit
import Flutter

class NativeViewController: UIViewController {
    
    @IBAction private func presentFlutterButtonTapped(_ sender: UIButton) {
        let viewController = FlutterViewController(engine: AppDelegate.instance.sharedFlutterEngine, nibName: nil, bundle: nil)
        present(viewController, animated: true, completion: nil)
    }
    
    @IBAction private func pushFlutterButtonTapped(_ sender: UIButton) {
        let viewController = FlutterViewController(engine: AppDelegate.instance.sharedFlutterEngine, nibName: nil, bundle: nil)
        navigationController?.pushViewController(viewController, animated: true)
    }
}

