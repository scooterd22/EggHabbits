//
//  Controller.swift
//  EggHabbits
//
//  Created by Scott DiBenedetto on 2/13/25.
//

import SwiftUI
import Foundation

class Controller: ObservableObject {
    @Published var habits: [Habit] = []
    func createHabit(habitName: String) {
        let newHabit = Habit(name: habitName)
        habits.append(newHabit)
        print("you created the habbit Walking")
        print("these are your habbits \(newHabit)")
    }
}

