//
//  ViewController.swift
//  Date_and_Time
//
//  Created by Mehdi Ghannadan on 3/13/20.
//  Copyright © 2020 Mehdi Ghannadan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: - View did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateDateandTime()
    }
    
    //MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    
    
    //MaRK: - Properties
    
    let dateFormatter = DateFormatter()
    
    
    
    
    //MARK: - Interactions
    @IBAction func tapRefresh(_ sender: UIButton) {
        updateDateandTime()
    }
    
    
    
    //MARK: - Functions
    
    func updateDateandTime() {
        dateFormatter.dateStyle = .medium
               dateFormatter.timeStyle = .medium
               
               dateLabel.text = dateFormatter.string(from: Date())
    
    }
    

    
    
    
    
    
    
    
}

