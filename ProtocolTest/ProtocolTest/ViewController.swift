//
//  ViewController.swift
//  ProtocolTest
//
//  Created by Appinventiv on 02/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

protocol OnButtonClick {
    func SendDataBack (_ Name:String)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var ViewControllerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.ViewControllerLabel.text = "Aanchal"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var onButtonClick : OnButtonClick?
    
    @IBAction func ViewControllerButton(_ sender: UIButton) {
        let viewControllerNewVC = self.storyboard?.instantiateViewController(withIdentifier: "viewControllerNew") as? ViewControllerNew
        viewControllerNewVC?.previousString = self.ViewControllerLabel.text!
        viewControllerNewVC?.onButtonClick = self
        self.navigationController?.pushViewController(viewControllerNewVC!, animated: true)
        
    }
}

//MARK:- Protocol Implemenation
//MARK:-
extension ViewController : OnButtonClick {
    func SendDataBack(_ Name:String)  {
        self.ViewControllerLabel.text = Name
    }
}


