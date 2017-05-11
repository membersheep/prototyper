import UIKit
import PlaygroundSupport
import Prototyper

let (window, device) = PrototyperViewController.setup(for: .iPhone4_7Inch)
PlaygroundPage.current.liveView = window
device.pushViewController(Prototyper.currentController, animated: false)
