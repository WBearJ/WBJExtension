//
//  ObservableType+WBExtension.swift
//  WBJExtension
//
//  Created by WBear on 2022/4/12.
//

import Foundation
import RxSwift

extension ObservableType {
    public func subscribeNext(_ onNext: @escaping (Element) -> Void) -> Disposable {
        let observer = self.subscribe { e in
            if case .next(let value) = e {
                onNext(value)
            }
        }
        return observer
    }
}
