import UIKit
import React

class ReactNativeViewController: UIViewController {
    
    private let componentName: String
    
    init(componentName: String) {
        self.componentName = componentName
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "React Native"
    }
    
    override func loadView() {
        super.loadView()
        guard let url = URL(string: "http://localhost:8081/index.bundle?platform=ios") else {
            fatalError("Could not create React Native localhost URL")
        }
        view = RCTRootView(bundleURL: url, moduleName: componentName, initialProperties: nil, launchOptions: nil)
    }
}

