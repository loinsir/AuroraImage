//
//  AuroraImageWrapper.swift
//
//
//  Created by 김인환 on 10/1/23.
//

public struct AuroraImageWrapper<Base> {
    public let base: Base
    public init(base: Base) {
        self.base = base
    }
}


public protocol AuroraImageCompatible: AnyObject {
    associatedtype AuroraImageBase
    
    static var ai: AuroraImageWrapper<AuroraImageBase>.Type { get set }
    
    var ai: AuroraImageWrapper<AuroraImageBase> { get set }
}

extension AuroraImageCompatible {
    public static var ai: AuroraImageWrapper<Self>.Type {
        get {
            return AuroraImageWrapper<Self>.self
        }
        set { }
    }
    
    public var ai: AuroraImageWrapper<Self> {
        get {
            return AuroraImageWrapper(base: self)
        }
        set { }
    }
}

