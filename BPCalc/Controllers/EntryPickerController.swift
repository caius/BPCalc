//
//  EntryPickerController.swift
//  BPCalc
//
//  Created by Caius Durling on 28/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

//
class EntryPickerController: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return 1
  }

}
