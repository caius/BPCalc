//
//  EntryTableViewController.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import UIKit

class EntryTableViewController: UITableViewController {

  let entries = EntryCollection()
  
  @IBOutlet var resetButton: UIBarButtonItem!
  @IBOutlet weak var navToolbar: UINavigationItem!

  // MARK: UIViewController
  override func viewDidLoad() {
    super.viewDidLoad()

//    loadFakeEntries()

    NotificationCenter.default.addObserver(self, selector: #selector(entriesChanged(notification:)), name: .entryCollectionChanged, object: nil)
  }

  // MARK: View Handlers

  @IBAction func clearEntries(_ sender: UIBarButtonItem) {
    entries.removeAll()
    tableView.reloadData()
  }

  @IBAction func addEntry(_ sender: UIBarButtonItem) {
    entries.append(Entry(systolic: 120, diastolic: 80))
  }
  
  @objc func entriesChanged(notification: Notification) {
    NSLog("Entries changed!")
    tableView.reloadData()
  }

  // MARK: - Table view data source

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return entries._entries.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellIdentifier = "EntryTableViewCell"
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? EntryTableViewCell else {
      fatalError("The dequeued cell is not EntryTableViewCell type")
    }

    let entry = entries.at(indexPath.row)
    cell.systolicLabel.text = String(entry.systolic)
    cell.diastolicLabel.text = String(entry.diastolic)

    return cell
  }
}
