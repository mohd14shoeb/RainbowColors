//
//  RGBAInformation.swift
//  RainbowColors
//
//  Created by Igor Matyushkin on 05.06.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class RGBAInformation: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    init(red: RGBAComponent, green: RGBAComponent, blue: RGBAComponent, alpha: RGBAComponent) {
        super.init()
        
        
        // Initialize red
        
        _red = red
        
        
        // Initialize green
        
        _green = green
        
        
        // Initialize blue
        
        _blue = blue
        
        
        // Initialize alpha
        
        _alpha = alpha
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    private var _red: RGBAComponent!
    
    var red: RGBAComponent {
        get {
            return _red
        }
    }
    
    private var _green: RGBAComponent!
    
    var green: RGBAComponent {
        get {
            return _green
        }
    }
    
    private var _blue: RGBAComponent!
    
    var blue: RGBAComponent {
        get {
            return _blue
        }
    }
    
    private var _alpha: RGBAComponent!
    
    var alpha: RGBAComponent {
        get {
            return _alpha
        }
    }
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}
