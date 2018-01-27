//
//  EntryCollection.swift
//  BPCalc
//
//  Created by Caius Durling on 27/01/2018.
//  Copyright © 2018 Caius Durling. All rights reserved.
//

import Foundation

extension Notification.Name {
  static let entryCollectionChanged = Notification.Name("EntryCollectionChanged")
}

class EntryCollection: NSObject {
  // The actual collection of entries
  var _entries = [Entry]()

  // Fetch an entry at a given index of the collection
  func at(_ index: Int) -> Entry {
    return _entries[index]
  }

  // Given an entry, append to the collection
  func append(_ entry: Entry) {
    _entries.append(entry)
    collectionChanged()
  }

  // Empty the collection entirely
  func removeAll() {
    self._entries.removeAll()
    collectionChanged()
  }

  // Internal: sends a notification the collection changed
  private func collectionChanged() {
    NotificationCenter.default.post(name: .entryCollectionChanged, object: self)
  }
}
