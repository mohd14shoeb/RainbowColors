//
//  RGBAStringParser.swift
//  RainbowColors
//
//  Created by Igor Matyushkin on 05.06.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

internal class RGBAStringParser: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    internal class func parseHexString(hexString: String) -> RGBAInformation? {
        // Check that hex string is not empty
        
        guard !hexString.isEmpty else {
            return nil
        }
        
        
        // Obtain hex code string without sharp symbol
        
        let firstSymbolIsSharp = hexString.hasPrefix("#")
        let hexCodeString = firstSymbolIsSharp ? (hexString as NSString).substringFromIndex(1) : hexString
        
        
        // Create collection of RGBA component integer values
        
        var rgbaComponentIntegerValues: [RGBAComponent] = [
            RGBAComponent.componentWithMaximumValue(),
            RGBAComponent.componentWithMaximumValue(),
            RGBAComponent.componentWithMaximumValue(),
            RGBAComponent.componentWithMaximumValue()
        ]
        
        
        // Parse hex code string
        
        let updateRGBAComponentIntegerValue: (componentIndex: Int, componentValueHexString: String) -> Void = {(componentIndex, componentValueHexString) in
            var rgbaComponentIntegerValue = UInt32(RGBAComponent.maximumIntegerValue())
            
            let scanner = NSScanner(string: componentValueHexString)
            scanner.scanHexInt(&rgbaComponentIntegerValue)
            
            rgbaComponentIntegerValues[componentIndex] = RGBAComponent(integerValue: Int(rgbaComponentIntegerValue))
        }
        
        let lengthOfHexCodeString = hexCodeString.characters.count
        
        switch lengthOfHexCodeString {
        case 3, 4:
            for i in 0..<lengthOfHexCodeString {
                let rangeForHexCodeSubstring = NSMakeRange(i, 1)
                let hexCodeSubstring = (hexCodeString as NSString).substringWithRange(rangeForHexCodeSubstring)
                let rgbaComponentString = String(format: "0x%@%@", hexCodeSubstring, hexCodeSubstring)
                updateRGBAComponentIntegerValue(componentIndex: i, componentValueHexString: rgbaComponentString)
            }
            break
        case 6, 8:
            for i in 0.stride(to: lengthOfHexCodeString, by: 2) {
                let rangeForHexCodeSubstring = NSMakeRange(i, 2)
                let hexCodeSubstring = (hexCodeString as NSString).substringWithRange(rangeForHexCodeSubstring)
                let rgbaComponentString = String(format: "0x%@", hexCodeSubstring)
                updateRGBAComponentIntegerValue(componentIndex: i / 2, componentValueHexString: rgbaComponentString)
            }
            break
        default:
            break
        }
        
        
        // Obtain result RGBA information
        
        let resultRGBAInformation = RGBAInformation(red: rgbaComponentIntegerValues[0], green: rgbaComponentIntegerValues[1], blue: rgbaComponentIntegerValues[2], alpha: rgbaComponentIntegerValues[3])
        
        
        // Return result
        
        return resultRGBAInformation
    }
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
    
    // MARK: Protocol methods
    
}
