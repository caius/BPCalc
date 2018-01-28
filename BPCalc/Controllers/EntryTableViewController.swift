//
//  EntryTableViewController.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class EntryTableViewController: UITableViewController {

  private var entries = [Entry]()

  @IBOutlet weak var navToolbar: UINavigationItem!
  @IBOutlet var pressurePicker: UIPickerView!

  // MARK: View Handlers

  @IBAction func addEntry(_ sender: UIBarButtonItem) {
    // TODO: pull the last values entered and use those here?
    entries.append(Entry(systolic: 120, diastolic: 80))
    let newPath = IndexPath(row: (entries.count - 1), section: 0)
    tableView.insertRows(at: [newPath], with: .fade)
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

    let entry = entries[indexPath.row]
    cell.systolicLabel.text = String(entry.systolic)
    cell.diastolicLabel.text = String(entry.diastolic)

    return cell
  }

  // MARK: Table view action handling

  override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    return true
  }

  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    if editingStyle == .delete {
      entries.remove(at: indexPath.row)
      tableView.deleteRows(at: [indexPath], with: .fade)
    } else if editingStyle == .insert {
      // Not used in our example, but if you were adding a new row, this is where you would do it.
    }
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    NSLog("tableView:didSelectRowAt:")
  }

  override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    NSLog("tableView:didDeselectRowAt:")
  }

}
