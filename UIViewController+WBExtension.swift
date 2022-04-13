//
//  UIViewController+WBExtension.swift
//  WBJExtension
//
//  Created by WBear on 2022/4/13.
//

import Foundation

extension UIViewController {
    /// 通过storyboard加载控制器
    /// - Parameters:
    ///   - name: storyboard名称
    ///   - id: storyboard id
    ///   - bundle: bundle
    /// - Returns: 控制器
    public class func initWithStoryBoard(storyboardName name: String, storyboardId id: String? = nil, bundle: Bundle? = nil) -> Self? {
        return UIStoryboard(name: name, bundle: bundle).instantiateViewController(withIdentifier: id ?? Self.wb_identifier) as? Self
    }
}
