//
//  Contact.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 04/05/23.
//

import Foundation
import CloudKit

struct Contact: Identifiable {
    let id: String
    let tile: String
    let isCompleted: Bool
    let associatedRecord: CKRecord
}

extension Contact {
    /// Initializes a `Contact` object from a CloudKit record.
    /// - Parameter record: CloudKit record to pull values from.
    init?(record: CKRecord) {
        guard let tile = record["tile"] as? String,
              let isCompleted = record["isCompleted"] as? Bool else {
            return nil
        }

        self.id = record.recordID.recordName
        self.tile = tile
        self.isCompleted = isCompleted
        self.associatedRecord = record
    }
}

