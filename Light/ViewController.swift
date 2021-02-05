//
//  ViewController.swift
//  Light
//
//  Created by Евгений Мелешков on 04.02.2021.
//

import UIKit

class ViewController: UIViewController {

    var touches = 0
    
    @IBOutlet var tap: UITapGestureRecognizer!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func isTaped(_ sender: Any) {
        changeBackground()
    }
    
    func changeBackground() {
        if tap.state == .recognized {
            touches += 1
            print(touches)
            if touches % 2 == 0 {
                view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            } else {
                view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            }
        }
    }
}

