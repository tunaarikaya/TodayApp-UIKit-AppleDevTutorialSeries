//
//  AppDelegate.swift
//  project1
//
//  Created by Mehmet Tuna Arıkaya on 17.03.2025.
//

import EventKit
import Foundation

extension Reminder {
    init(with ekReminder: EKReminder) throws {
        guard let dueDate = ekReminder.alarms?.first?.absoluteDate else {
            throw TodayError.reminderHasNoDueDate
        }
        
        id = ekReminder.calendarItemIdentifier
        title = ekReminder.title
        self.dueDate = dueDate
        notes = ekReminder.notes
        isComplete = ekReminder.isCompleted
    }
}
