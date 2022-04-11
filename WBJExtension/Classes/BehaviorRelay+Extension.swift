//
//  BehaviorRelay+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//

import Foundation
import RxRelay

extension BehaviorRelay where Element: RangeReplaceableCollection, Element.Element: Equatable {
    /// 添加元素
    /// - Parameter element: 元素
    public func append(_ element: Element.Element) {
        accept(value + [element])
    }
    
    /// 更新元素
    /// - Parameter element: 元素
    public func update(_ element: Element.Element) {
        var newValue = value
        if let idx = newValue.firstIndex(where: {return $0 == element}) {
            newValue.remove(at: idx)
            newValue.insert(element, at: idx)
        }
        accept(newValue)
    }
    
    /// 插入元素到指定位置
    /// - Parameters:
    ///   - element: 元素
    ///   - index: 位置
    public func insert(_ element: Element.Element, at index: Element.Index) {
        var newValue = value
        newValue.insert(element, at: index)
        accept(newValue)
    }
    
    /// 移除指定元素
    /// - Parameter element: 元素
    public func remove(_ element: Element.Element) {
        if let index = value.firstIndex(of: element) {
            remove(at: index)
        }
    }
    
    /// 移除指定位置元素
    /// - Parameter index: 位置
    public func remove(at index: Element.Index) {
        var newValue = value
        newValue.remove(at: index)
        accept(newValue)
    }
}
