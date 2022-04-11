//
//  UIColor+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//

import Foundation

extension UIColor {
    /// 16进制颜色
    /// - Parameters:
    ///   - hex: 16进制字符串
    ///   - alpha: 透明度
    /// - Returns: 转换后颜色
    public class func colorWithHex(hex: String, alpha: CGFloat = 1) -> UIColor {
        var cStr = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        // check does str has '#' or '0x' character at the first
        if cStr.hasPrefix("#") {
            cStr = String(cStr.suffix(1))
        }
        if cStr.hasPrefix("0x") {
            cStr = String(cStr.suffix(2))
        }
        
        // check str not 16string
        if cStr.count != 6 {
            return .clear
        }

        var rgbValue: UInt64 = 0
        Scanner(string: cStr).scanHexInt64(&rgbValue)
        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: alpha)
    }
}
