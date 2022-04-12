//
//  UITableView+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//

import Foundation

extension UITableView {
    /// 添加tableView的顶部空白拉伸颜色
    /// - Parameter color: 颜色
    func addTopBounceAreaView(color: UIColor = .white) {
        var frame = UIScreen.main.bounds
        frame.origin.y = -frame.size.height

        let view = UIView(frame: frame)
        view.backgroundColor = color
        
        self.addSubview(view)
    }
}
