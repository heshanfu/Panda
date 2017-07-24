//
//  UITableViewExtensions.swift
//  Panda
//
//  Copyright (c) 2017 Javier Zhang (https://wordlessj.github.io/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit

extension PandaChain where Object: UITableView {
    /// Register a class for cell, reuse identifier is the class name.
    @discardableResult
    public func registerCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) -> PandaChain {
        object.register(cellClass, forCellReuseIdentifier: NSStringFromClass(cellClass))
        return self
    }

    /// Unregister a class for cell, reuse identifier is the class name.
    @discardableResult
    public func unregisterCell<Cell: UITableViewCell>(_ cellClass: Cell.Type) -> PandaChain {
        object.register(nil as AnyClass?, forCellReuseIdentifier: NSStringFromClass(cellClass))
        return self
    }

    /// Register a class for header footer view, reuse identifier is the class name.
    @discardableResult
    public func registerHeaderFooterView<View: UITableViewHeaderFooterView>(_ aClass: View.Type) -> PandaChain {
        object.register(aClass, forHeaderFooterViewReuseIdentifier: NSStringFromClass(aClass))
        return self
    }

    /// Unregister a class for header footer view, reuse identifier is the class name.
    @discardableResult
    public func unregisterHeaderFooterView<View: UITableViewHeaderFooterView>(_ aClass: View.Type) -> PandaChain {
        object.register(nil as AnyClass?, forHeaderFooterViewReuseIdentifier: NSStringFromClass(aClass))
        return self
    }

    /// Dequeue a reusable cell, reuse identifier is the class name.
    public func dequeueCell<Cell: UITableViewCell>(_ cellClass: Cell.Type, for indexPath: IndexPath) -> Cell {
        return object.dequeueReusableCell(withIdentifier: NSStringFromClass(cellClass), for: indexPath) as! Cell
    }

    /// Dequeue a reusable header footer view, reuse identifier is the class name.
    public func dequeueHeaderFooterView<View: UITableViewHeaderFooterView>(_ aClass: View.Type) -> View? {
        return object.dequeueReusableHeaderFooterView(withIdentifier: NSStringFromClass(aClass)) as? View
    }
}