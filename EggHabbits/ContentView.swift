//
//  ContentView.swift
//  EggHabbits
//
//  Created by Scott DiBenedetto on 2/12/25.
//

import SwiftUI

struct ContentView: View {
    var habit = Habit(name: "Walking")
    var controller = Controller()
    @State private var showPopup = false
    @State private var activityName = ""
    @State private var numberOfDays = 0
    
    var body: some View {
        ZStack {
                   VStack {
                       HStack {
                           Spacer()
                           Button(action: {
                               showPopup = true
                           }) {
                               Image(systemName: "plus.circle")
                                   .font(.system(size: 50))
                                   .foregroundStyle(.green)
                                   .padding()
                           }
                       }
                       Spacer()
                   }
                   
                   if showPopup {
                       Color.black.opacity(0.3)
                           .edgesIgnoringSafeArea(.all)
                       
                       PopupView(showPopup: $showPopup, activityName: $activityName, numberOfDays: $numberOfDays)
                           .frame(width: 300)
                           .background(Color.white)
                           .cornerRadius(12)
                           .shadow(radius: 10)
                           .overlay(
                               RoundedRectangle(cornerRadius: 12)
                                   .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                           )
                           .transition(.scale)
                   }
               }
               .animation(.easeInOut, value: showPopup) // Smooth animation
           }
       }

       #Preview {
           PopupView(
                  showPopup: .constant(true),  // Default to visible
                  activityName: .constant("Walking"),
                  numberOfDays: .constant(10)  // Provide an integer value
              )
       }

       struct PopupView: View {
           @Binding var showPopup: Bool
           @Binding var activityName: String
           @Binding var numberOfDays: Int

           var body: some View {
               VStack {
                   Text("Create an Activity")
                       .font(.system(size: 25))
                       .bold()
                       .padding(.top, 10)
                      
                   HStack{
                       Text("Activity Name:")
                           .font(.system(size: 20))
                       
                       TextField("Reading", text: $activityName)
                           .background(Color.white)
                   }
                   .padding()
                       
                   HStack {
           
                       Text("Number of Days:")
                           .font(.system(size: 20))
                           .padding(.leading, 15)
                           .layoutPriority(1)
                       
                       TextField("21", value: $numberOfDays, format: .number)
                           .background(Color.white)
                           .keyboardType(.numberPad)
                           .padding(.trailing, 20)

                       
                       
                   }
                   
                   HStack {
                       Button("Cancel") {
                           showPopup = false
                       }
                       .foregroundStyle(Color.white)
                       .padding(5)
                       .background(Color.black)
                       .cornerRadius(8)
                           
                       Button("Save"){
                           print("you are doing \(activityName) for \(numberOfDays) days, good luck!")
                           
                       }
                       .foregroundStyle(Color.white)
                       .padding(5)
                       .background(Color.green)
                       .cornerRadius(8)
                   }
                   .padding()
                   
                   
                   
               }
               .frame(width: 300, height: 250, alignment: .top)
               .border(.green, width: 4)
               .background(Color.gray)
               .cornerRadius(8)
               
               
               
           }
       }
