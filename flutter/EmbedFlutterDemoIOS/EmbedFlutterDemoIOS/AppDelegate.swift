import UIKit
import Flutter
import FlutterPluginRegistrant

@main
class AppDelegate: FlutterAppDelegate {

    let sharedFlutterEngine = FlutterEngine(name: "shared_flutter_engine")
    
    class var instance: AppDelegate { UIApplication.shared.delegate as! AppDelegate }

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        sharedFlutterEngine.run(withEntrypoint: nil, initialRoute: "/shared")
        GeneratedPluginRegistrant.register(with: sharedFlutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
