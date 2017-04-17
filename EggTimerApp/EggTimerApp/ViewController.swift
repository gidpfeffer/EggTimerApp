//
//  ViewController.swift
//  EggTimerApp
//
//  Created by Gideon Pfeffer on 4/17/17.
//  Copyright © 2017 Gideon Pfeffer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func play(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.stepTime), userInfo: nil, repeats: true)
        
    }

    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
        
    }

    @IBAction func minusTen(_ sender: Any) {
        
        if time >= 10{
            time -= 10
            label.text = String(time)
        }
        
    }

    @IBAction func plusTen(_ sender: Any) {
        
        time += 10
        label.text = String(time)
        
    }

    @IBAction func reset(_ sender: Any) {
        time = 210
        label.text = String(time)
    }

    func stepTime(){
        time -= 1
        if time >= 0{
            label.text = String(time)
        } else {
            timer.invalidate()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

