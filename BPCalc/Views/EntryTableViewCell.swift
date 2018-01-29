//
//  EntryTableViewCell.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class EntryTableViewCell: UITableViewCell {

  private var _inputView: UIView?
  override var inputView: UIView? {
    get {
      return _inputView
    }
    set {
      _inputView = newValue
    }
  }

  override var canBecomeFirstResponder: Bool {
    get {
      return true
    }
  }

  @IBOutlet weak var systolicLabel: UILabel!
  @IBOutlet weak var diastolicLabel: UILabel!

}
