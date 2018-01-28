//
//  Entry.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import Foundation

class Entry: NSObject {

  var systolic: Int = 120
  var diastolic: Int = 80

  init(systolic: Int, diastolic: Int) {
    assert(systolic >= 0, "Systolic was zero or less")
    assert(systolic <= 300, "Systolic was greater than 300")
    assert(diastolic >= 0, "Systolic was zero or less")
    assert(diastolic <= 300, "Systolic was greater than 300")

    self.systolic = systolic
    self.diastolic = diastolic
  }

}
