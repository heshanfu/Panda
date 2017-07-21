//
//  NSStringDrawingContext.swift
//  Panda
//
//  Baby of PandaMom. DO NOT TOUCH.
//

import UIKit

extension PandaChain where Object: NSStringDrawingContext {
    @discardableResult
    public func minimumScaleFactor(_ value: CGFloat) -> PandaChain {
        object.minimumScaleFactor = value
        return self
    }
}
