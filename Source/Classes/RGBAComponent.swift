//
//  RGBAComponent.swift
//  RainbowColors
//
//  Created by Igor Matyushkin on 05.06.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class RGBAComponent: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    internal class func minimumIntegerValue() -> Int {
        return 0
    }
    
    internal class func maximumIntegerValue() -> Int {
        return 255
    }
    
    internal class func minimumCGFloatValue() -> CGFloat {
        return 0.0
    }
    
    internal class func maximumCGFloatValue() -> CGFloat {
        return 1.0
    }
    
    internal class func componentWithMinimumValue() -> Self {
        return self.init(integerValue: minimumIntegerValue())
    }
    
    internal class func componentWithMaximumValue() -> Self {
        return self.init(integerValue: maximumIntegerValue())
    }
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    required internal init(integerValue: Int) {
        super.init()
        
        
        // Assertions for integer value
        
        assert(integerValue >= classForCoder.minimumIntegerValue(), "Integer value should be more than or equal to minimum integer value")
        assert(integerValue <= classForCoder.maximumIntegerValue(), "Integer value should be less than or equal to maximum integer value")
        
        
        // Initialize integer value
        
        _integerValue = integerValue
        
        
        // Initialize CGFloat value
        
        _CGFloatValue = CGFloat(integerValue) * classForCoder.maximumCGFloatValue() / CGFloat(classForCoder.maximumIntegerValue())
    }
    
    required internal init(CGFloatValue: CGFloat) {
        super.init()
        
        
        // Assertions for CGFloat value
        
        assert(CGFloatValue >= classForCoder.minimumCGFloatValue(), "CGFloat value should be more than or equal to minimum CGFloat value")
        assert(CGFloatValue <= classForCoder.maximumCGFloatValue(), "CGFloat value should be less than or equal to maximum CGFloat value")
        
        
        // Initialize integer value
        
        _integerValue = Int(CGFloatValue * CGFloat(classForCoder.maximumIntegerValue()) / classForCoder.maximumCGFloatValue())
        
        
        // Initialize CGFloat value
        
        _CGFloatValue = CGFloatValue
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    private var _integerValue: Int!
    
    internal var integerValue: Int {
        get {
            return _integerValue
        }
    }
    
    private var _CGFloatValue: CGFloat!
    
    internal var CGFloatValue: CGFloat {
        get {
            return _CGFloatValue
        }
    }
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}

