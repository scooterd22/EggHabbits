//
//  Habbit.swift
//  EggHabbits
//
//  Created by Scott DiBenedetto on 2/13/25.
//

import SwiftUI

class Habit: Identifiable {
    var id: UUID = UUID()
    var name: String
    var dayCount: Int = 0
    var isCompleted: Bool = false
    
    init(name: String) {
        self.name = name
        // this is the only one that you init because you want it to be set by the user manually and the other ones have default values (reminder)
    }
}

