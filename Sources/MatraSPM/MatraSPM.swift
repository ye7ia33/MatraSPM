import UIKit
public struct MatraSPM {
    public private(set) var text = "Hello, World!"

    public init() { }
    
    public func getOffersScreen() -> UIViewController {
        return OffersViewController()
    }
}
