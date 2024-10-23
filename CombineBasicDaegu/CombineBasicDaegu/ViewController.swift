//
//  ViewController.swift
//  CombineBasicDaegu
//
//  Created by 배정길 on 10/23/24.
//

import UIKit
import Combine

class ViewController: UIViewController {

    var cancellable: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let publisher = Just("Hello, Combine!")
                
        cancellable = publisher.sink { value in
            print(value)
        }
    }


}

