//
//  UIViewController+WBExtension.swift
//  WBJExtension
//
//  Created by WBear on 2022/4/12.
//

import Foundation

extension UIViewController {
    public class func initWithStoryBoard(storyboardName name: String, storyboardId id: String? = nil, bundle: Bundle? = nil) -> Self? {
        return UIStoryboard(name: name, bundle: bundle).instantiateViewController(withIdentifier: id ?? Self.wb_identifier) as? Self
    }
}
