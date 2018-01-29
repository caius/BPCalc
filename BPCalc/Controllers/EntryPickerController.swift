//
//  EntryPickerController.swift
//  BPCalc
//
//  Created by Caius Durling on 28/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

// Entry datapicker has pretty obvious requirements:
// * Enter both Systolic & Diastolic values
// * Both have values from 1-300
// * Selection defaults to 120/80 unless told otherwise
class EntryPickerController: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {

  var pickerView: UIPickerView

  override init() {
    self.pickerView = UIPickerView()
    super.init()

    pickerView.delegate = self
    pickerView.dataSource = self
  }

  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
  }

  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return 300
  }

  // Rows 0..299 generate strings "1".."300"
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return String(row + 1)
  }

}
