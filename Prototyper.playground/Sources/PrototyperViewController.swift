import UIKit

public class PrototyperViewController: UINavigationController {
    
    public enum ScreenType {
        case iPhone3_5Inch
        case iPhone4Inch
        case iPhone4_7Inch
        case iPhone5_5Inch
        case iPad
        case iPad_12_9Inch
        case tv
    }
    
    static public func setup(for screenType: ScreenType, scale: CGFloat = 1.0, isPortrait: Bool = true) -> (UIWindow, PrototyperViewController) {
        let vc = PrototyperViewController()
        let screenSize = PrototyperViewController.getScreenSize(for: screenType, isPortrait: isPortrait)
        let playgroundSize = CGSize.init(width: screenSize.width*scale, height: screenSize.height*scale)
        let w = UIWindow(frame: CGRect(x: 0, y: 0, width: playgroundSize.width, height: playgroundSize.height))
        w.rootViewController = vc
        w.makeKeyAndVisible()
        return (w, vc)
    }
    
    static private func getScreenSize(for screenType: ScreenType, isPortrait: Bool = true) -> CGSize {
        var size : CGSize
        switch screenType {
        case .iPhone3_5Inch:
            size = CGSize(width: 320, height: 480)
        case .iPhone4Inch:
            size = CGSize(width: 320, height: 568)
        case .iPhone4_7Inch:
            size = CGSize(width: 375, height: 667)
        case .iPhone5_5Inch:
            size = CGSize(width: 414, height: 736)
        case .iPad:
            size = CGSize(width: 768, height: 1024)
        case .iPad_12_9Inch:
            size = CGSize(width: 1024, height: 1366)
        case .tv:
            size = CGSize(width: 1980, height: 1020)
        }
        if isPortrait {
            return size
        }
        return CGSize.init(width: size.height, height: size.width)
    }
    
}
