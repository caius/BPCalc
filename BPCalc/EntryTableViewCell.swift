//
//  EntryTableViewCell.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class EntryTableViewCell: UITableViewCell {

  @IBOutlet weak var systolicLabel: UILabel!
  @IBOutlet weak var diastolicLabel: UILabel!

  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

}
