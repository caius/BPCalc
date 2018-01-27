//
//  EntryTableViewController.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class EntryTableViewController: UITableViewController {

  var entries = [Entry]()
  
  func loadFakeEntries() {
    entries += [
      Entry(systolic: 120, diastolic: 80),
      Entry(systolic: 115, diastolic: 75),
      Entry(systolic: 125, diastolic: 85),
    ]
  }

  override func viewDidLoad() {
        super.viewDidLoad()

      loadFakeEntries()
    }

  @IBAction func clearEntries(_ sender: UIBarButtonItem) {
    NSLog("Removing all entries")
    self.entries.removeAll()
    self.tableView.reloadData()
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cellIdentifier = "EntryTableViewCell"
      guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? EntryTableViewCell else {
        fatalError("The dequeued cell is not EntryTableViewCell type")
      }

      // let entry = entries[indexPath.row]
      // cell.systolic = entry.systolic
      // cell.diastolic = entry.diastolic

      return cell
    }

}
