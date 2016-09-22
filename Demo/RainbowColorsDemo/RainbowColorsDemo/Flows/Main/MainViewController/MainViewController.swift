//
//  MainViewController.swift
//  RainbowColorsDemo
//
//  Created by Igor Matyushkin on 05.06.16.
//  Copyright © 2016 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var titleLabel: UILabel!
    
    
    // MARK: Object variables & properties
    
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize view
        
        view.backgroundColor = UIColor(hexString: "#333")
        
        
        // Initialize title label
        
        titleLabel.text = "Example"
        titleLabel.textColor = UIColor(hexString: "ff9900")
        titleLabel.backgroundColor = UIColor(hexString: "ddd")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Private object methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
