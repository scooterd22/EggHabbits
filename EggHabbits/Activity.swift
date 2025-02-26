//
//  Activity.swift
//  EggHabbits
//
//  Created by Scott DiBenedetto on 2/17/25.
//

import SwiftData
import Foundation

@Model
class Activity {
    @Attribute(.unique) var activityName: String
    var numberOfDays: Int
    var isCompleted: Bool
    
    init(activityName: String, numberOfDays: Int, isCompleted: Bool) {
        self.activityName = activityName
        self.numberOfDays = numberOfDays
        self.isCompleted = isCompleted
    }
}

