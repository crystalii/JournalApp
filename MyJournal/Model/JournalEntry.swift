//
//  JournalEntry.swift
//  MyJournal
//
//  Created by Ahmad Ardal on 2022-09-06.
//

import Foundation



// JournalEntry definerar en enskild entry i våran dagbok.

struct JournalEntry {
    private var formatter = DateFormatter()
    private var unformattedDate: Date
    private var myDateFormat = "yyyy-MM-dd"
    
    var content: String
    
    var title: String

    var date: String {
        return formatter.string(from: unformattedDate)
    }
    
    init(title: String, content: String) {
        self.formatter.dateFormat = myDateFormat
        self.content = content
        self.title = title
        self.unformattedDate = Date()
    }
    
    init(title: String, content: String, date: Date) {
        self.formatter.dateFormat = myDateFormat
        self.content = content
        self.title = title
        self.unformattedDate = date
    }
    
}
