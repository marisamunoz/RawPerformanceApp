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
    
    var body: some View {
        let timeSlots = [
            "6:00 AM", "7:00 AM", "8:00 AM", "9:00 AM", "10:00 AM"
        ]
        let fullSlots: Set<String> = ["6:00 AM", "9:00 AM"]
        
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
                    }
                }
            }
        }
    }
        func formattedDate(_ date:Date) -> String {
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            return formatter.string(from: date)
        }
    }

#Preview {
    Schedule()
}
