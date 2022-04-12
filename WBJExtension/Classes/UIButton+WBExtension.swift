//
//  UIButton+WBExtension.swift
//  WBJExtension
//
//  Created by WBear on 2022/4/12.
//

import Foundation

extension UIButton {
    /// 在禁用的时候会改变alpha值
    public var isAlphaEnabled: Bool {
        set {
            isEnabled = newValue
            alpha = newValue ? 1 : 0.2
        }
        get {
            isEnabled
        }
    }
}
