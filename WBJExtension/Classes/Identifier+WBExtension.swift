//
//  Identifier+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//
import UIKit
import Foundation

public protocol WBIdentifierProtocol {
    static var wb_identifier: String { get }
}

extension WBIdentifierProtocol where Self: UIViewController {
    public static var wb_identifier: String {
        return String(describing: Self.self)
    }
}

extension WBIdentifierProtocol where Self: UIView {
    public static var wb_identifier: String {
        return String(describing: Self.self)
    }
}

extension WBIdentifierProtocol where Self: NSObject {
    public static var wb_identifier: String {
        return String(describing: Self.self)
    }
}

extension NSObject: WBIdentifierProtocol {}
