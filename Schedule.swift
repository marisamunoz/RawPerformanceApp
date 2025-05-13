//
//  Schedule.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/4/25.
//

import SwiftUI

struct Schedule: View {
    @State private var selectedDate: Date = Date()
    @State private var showTimes = false
    @State private var selectedTime: String? = nil
    @State private var selectedCoach: String? = nil
    @State private var book = false
    @State private var booked: Bool = false
    @State private var showUnavailable = false
    @State private var cancellationNotif = false
    @Environment(\.presentationMode) var viewContext
    
    var body: some View {
        let timeSlots = [
            "6:00 AM", "7:00 AM", "8:00 AM", "9:00 AM", "10:00 AM"
        ]
        let fullSlots: Set<String> = ["6:00 AM", "9:00 AM"]
        
        NavigationView {
            VStack(spacing: 20){
                
                DatePicker("",
                           selection: $selectedDate,
                           displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)
                .labelsHidden()
                .onChange(of: selectedDate) {
                    withAnimation {
                        showTimes = true
                    }
                }
                .padding()
                
                if showTimes {
                    Text("available times for \(formattedDate(selectedDate))")
                        .font(.headline)
                        .padding(.top)
                    
                    Button(action: {
                        book = true
                    }){
                        Text("Would you like to book a session?")
                            .font(.subheadline)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                    .padding(.top)
                    
                    if book{
                        Text("Select a time slot below")
                            .font(.subheadline)
                            .padding(.top, 5)
                        
                        ScrollView{
                            ForEach(timeSlots, id: \.self) { time in
                                Text(time)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(fullSlots.contains(time) ? Color(red: 0.5, green: 0, blue: 0) : Color.gray.opacity(0.3))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(fullSlots.contains(time) ? Color.red : Color.clear, lineWidth: 2)
                                    )
                                    .cornerRadius(8)
                                    .padding(.horizontal)
                                    .onTapGesture {
                                        if fullSlots.contains(time) {
                                            showUnavailable = true
                                        }
                                        else{
                                            selectedTime = time
                                            selectedCoach = coachForTime(time)
                                        }
                                    }
                            }
                        }
                        
                        if let coach = selectedCoach, let timeSlot = selectedTime {
                            VStack(spacing: 10){
                                Text("Coach: \(coach)")
                                    .font(.subheadline)
                                    .padding(.top, 10)
                                Text("Time: \(timeSlot)")
                                    .font(.subheadline)
                                    .padding(.top, 5)
                            }
                            .padding()
                            .background(Color.yellow.opacity(0.1))
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            
                            Button(action: {
                                bookSession()
                            }){
                                Text("Book Session")
                                    .font(.subheadline)
                                    .padding()
                                    .foregroundColor(Color.green)
                                    .cornerRadius(10)
                            }
                            .padding(.top)
                        }
                    }
                }
                
                if booked{
                    Text("Your session has been booked!")
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .padding()
                }
            }
            .navigationBarBackButtonHidden(true)
            .alert(isPresented: $showUnavailable){
                    Alert(
                        title: Text("Unavailable"),
                      message: Text("Please select a different time slot"),
                      dismissButton: .default(Text("OK"))
                )
            }
        }
    }
    
        func formattedDate(_ date:Date) -> String {
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            return formatter.string(from: date)
        }

    func coachForTime(_ time: String) -> String {
        switch time {
        case "6:00 AM":
            return "Coach Anna"
        case "7:00 AM":
            return "Coach Smith"
        case "8:00 AM":
            return "Coach Doe"
        case "9:00 AM":
            return "Coach Smith"
        case "10:00 AM":
            return "Coach Doe"
        default:
            return ""
        }
    }

    func bookSession(){
        booked = true
        book = false
    }
}



