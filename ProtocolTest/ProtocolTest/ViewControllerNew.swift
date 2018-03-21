//
//  ViewControllerNew.swift
//  ProtocolTest
//
//  Created by Appinventiv on 02/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController {
    
    @IBOutlet weak var ViewControllerNewLabel: UILabel!
    var onButtonClick : OnButtonClick?
    var previousString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ViewControllerNewLabel.text  = self.previousString
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func ViewControllerNewButton(_ sender: UIButton) {
        
        self.ViewControllerNewLabel.text = "Vikash"
        
        self.onButtonClick?.SendDataBack(self.ViewControllerNewLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
