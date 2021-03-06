//
//  UIWindow+Notification.swift
//  NotificationView
//
//  Created by Xin Hong on 16/5/9.
//  Copyright © 2016年 Teambition. All rights reserved.
//

import UIKit

internal extension UIWindow {
    static var notificationWindow: UIWindow? {
        for window in UIApplication.shared.windows.reversed() {
            let windowOnMainScreen = window.screen == UIScreen.main
            let windowIsVisible = !window.isHidden && window.alpha > 0
            let windowLevelNormal = window.windowLevel == UIWindowLevelNormal

            if windowOnMainScreen && windowIsVisible && windowLevelNormal {
                return window
            }
        }
        return nil
    }
}
