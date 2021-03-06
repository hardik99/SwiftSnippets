//
//  SizeInfo.swift
//

import UIKit

struct SizeInfo {
    /// Returns screen's scale
    static var scale: CGFloat {
        return UIScreen.main.scale
    }

    /// Returns pixel's width / height
    static var pixel: CGFloat {
        return 1 / SizeInfo.scale
    }

    /// Determines whether screen size is 4 inch diagonally
    static var is4Inch: Bool {
        return (max(Int(UIScreen.main.bounds.height), Int(UIScreen.main.bounds.width)) == 568)
    }

    /// Determines whether user is on iPhone X
    static var isX: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone && UIScreen.main.nativeBounds.height == 2_436
    }

    /// Determines whether user is on iPad
    static var isIpad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}
