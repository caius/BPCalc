//
//  ViewController.swift
//  BPCalc
//
//  Created by Caius Durling on 20/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

  @IBOutlet weak var dia_1: UITextField!
  @IBOutlet weak var dia_2: UITextField!
  @IBOutlet weak var dia_3: UITextField!
  
  @IBOutlet weak var sys_1: UITextField!
  @IBOutlet weak var sys_2: UITextField!
  @IBOutlet weak var sys_3: UITextField!
  
  @IBOutlet weak var dia_total: UITextField!
  @IBOutlet weak var sys_total: UITextField!
  
  @IBAction func triggerCalculation(_ sender: UIButton) {
    NSLog("Value changed, need to recalculate")
    
    for field in [dia_1, dia_2, dia_3, sys_1, sys_2, sys_3] {
      field!.endEditing(false)
    }

    var dataPoints = 0
    var diaValue = 0
    var sysValue = 0
    
    if (dia_1.text! != "" && sys_1.text! != "") {
      dataPoints += 1
      diaValue += Int(dia_1.text!)!
      sysValue += Int(sys_1.text!)!
    }
    
    if (dia_2.text! != "" && sys_2.text! != "") {
      dataPoints += 1
      diaValue += Int(dia_2.text!)!
      sysValue += Int(sys_2.text!)!
    }
    
    if (dia_3.text! != "" && sys_3.text! != "") {
      dataPoints += 1
      diaValue += Int(dia_3.text!)!
      sysValue += Int(sys_3.text!)!
    }
    
    if dataPoints > 0 {
      let diaTotal: Int = diaValue / dataPoints
      let sysTotal: Int = sysValue / dataPoints
      
      dia_total.text = String(diaTotal)
      sys_total.text = String(sysTotal)
    } else {
      dia_total.text = ""
      sys_total.text = ""
    }

  }

  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
      dia_1.delegate = self
      sys_1.delegate = self
      dia_2.delegate = self
      sys_2.delegate = self
      dia_3.delegate = self
      sys_3.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

