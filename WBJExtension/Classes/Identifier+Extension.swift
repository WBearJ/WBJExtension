//
//  Identifier+Extension.swift
//  TNExtension
//
//  Created by WBear on 2022/3/23.
//
import UIKit
import Foundation

public protocol TNIdentifierProtocol {
    static var tn_identifier: String { get }
}

extension TNIdentifierProtocol where Self: UIViewController {
    public static var tn_identifier: String {
        return String(describing: Self.self)
    }
}

extension TNIdentifierProtocol where Self: UIView {
    public static var tn_identifier: String {
        return String(describing: Self.self)
    }
}

extension TNIdentifierProtocol where Self: NSObject {
    public static var tn_identifier: String {
        return String(describing: Self.self)
    }
}

extension NSObject: TNIdentifierProtocol {}
