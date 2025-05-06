//
//  myClasses.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/5/25.
//

import SwiftUI

struct gymClass: Identifiable, Equatable {
    let id: UUID
    let name: String
    let time: String
    let instructor: String
    let location: String
    
    init(time: String, name: String, instructor: String, location: String){
        self.id = UUID()
        self.name = name
        self.time = time
        self.instructor = instructor
        self.location = location
    }
}

struct myClasses: View {
    
    @State var initials: [String] = []
    @State private var showAlert = false
    @State private var sessionCancelled = false
    @State private var selectedClass: gymClass? = nil
    @State private var showCancelledMessage = false
    
    @State private var classes: [gymClass] = [
        gymClass(time: "11:00 AM - 12:00 PM", name: "Silver Sneakers", instructor: "Romo", location:"Westover"),
        
        gymClass(time: "8:00 AM - 9:00 AM", name: "Fury", instructor: "Adriana", location:"Westover")]
    
    var body: some View {
        
        let firstname = UserDefaults.standard.string(forKey: "savedfirstname") ?? ""
        let lastname = UserDefaults.standard.string(forKey: "savedlastname") ?? ""
        NavigationStack{
            
            ZStack{
                Color.gray.ignoresSafeArea()
                
                NavigationLink(destination: Settings()){
                    Circle()
                        .fill(Color(.lightGray))
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 325)
                        .padding(.bottom, 700)
                        .shadow(radius: 5)
                    
                }
                
                Text("My Classes")
                    .foregroundColor(Color.black)
                    .font(.system(size: 25, weight: .bold, design: .monospaced))
                    .padding(.bottom, 600)
                    .padding(.trailing, 220)
                //times
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(UIColor.systemGray5))
                    .frame(width: 375, height: 150)
                    .padding(.top, 0)
                Rectangle()
                    .fill(Color(.white))
                    .frame(width: 410, height: 750)
                    .padding(.top, 200)
                    .cornerRadius(10)
                //times
                ZStack{
                    Rectangle()
                        .fill(Color(UIColor.systemGray5))
                        .frame(width: 375, height: 150)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                        .padding(.top, 16)
                        .contentShape(Rectangle())
                    
                    Text("Thu, Apr 24")
                        .font(.system(size: 19, weight: .light, design: .monospaced))
                        .foregroundColor(Color.black)
                        .padding(.bottom, 170)
                        .padding(.trailing, 240)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("11:00 AM - 12:00 PM")
                            .font(.system(size: 19, weight: .light, design: .monospaced))
                            .foregroundColor(Color.black)
                        Divider()
                            .frame(width: 350, height: 1)
                            .background(Color.gray)
                        Text("Silver Sneakers")
                            .font(.system(size: 19, weight: .bold, design: .default))
                            .foregroundColor(Color.black)
                        Text("with Romo\nWestover")
                            .font(.system(size: 19, weight: .light, design: .default))
                            .foregroundColor(Color.black)
                    }
                    .padding(.horizontal, 16)
                    
                }
                
                .padding(.bottom, 340)
                .padding(.leading, 1)
                //times
                ForEach(classes){ gymClass in
                    ZStack{
                        Rectangle()
                            .fill(Color(UIColor.systemGray5))
                            .frame(width: 375, height: 150)
                            .shadow(radius: 5)
                            .contentShape(Rectangle())
                        
                        Text("Mon, Apr 28")
                            .font(.system(size: 19, weight: .light, design: .monospaced))
                            .foregroundColor(Color.black)
                            .padding(.bottom, 180)
                            .padding(.trailing, 240)
                        VStack(alignment: .leading, spacing: 10) {
                            Text("8:00 AM - 9:00 AM")
                                .font(.system(size: 19, weight: .light, design: .monospaced))
                                .foregroundColor(Color.black)
                            Divider()
                                .frame(width: 350, height: 1)
                                .background(Color.gray)
                            Text("Fury")
                                .font(.system(size: 19, weight: .bold, design: .default))
                                .foregroundColor(Color.black)
                            Text("with Adriana\nWestover")
                                .font(.system(size: 19, weight: .light, design: .default))
                                .foregroundColor(Color.black)
                        }
                        .padding(.horizontal, 16)
                        .padding(.leading, 1)
                    }
                    .onTapGesture {
                        selectedClass = gymClass
                        showAlert = true
                    }
                }
                
                .padding(.top, 50)
                
                Text(initials.joined())
                    .font(.headline)
                    .foregroundColor(.black)
                    .font(.system(size: 100, weight: .bold, design: .monospaced))
                    .padding(.trailing, 338)
                    .padding(.bottom, 700)
                    .padding(.leading, 10)
                
                
                
                if showAlert{
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            showAlert = false
                        }
                    VStack(spacing: 30){
                        NavigationLink(destination: Schedule()){
                            Text("Reschedule Session")
                                .font(.system(size: 25, weight: .bold))
                                .padding(.top, 100)
                                .foregroundColor(Color.black)
                        }
                        
                        Divider()
                            .frame(width: 300, height: 2)
                            .background(Color.gray)
                        Button(action: {
                            if let selected = selectedClass{
                                showCancelledMessage = true
                            }
                        }){
                            Text("Cancel Session")
                                .font(.system(size: 25, weight: .bold))
                                .padding(.top, 10)
                                .foregroundColor(Color.black)
                        }
                        Button(action: {
                            showAlert = false
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .padding(.bottom, 100)
                        }
                    }
                    .padding()
                    .frame(width: 300, height: 270)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .zIndex(1)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                if showCancelledMessage{
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            showCancelledMessage = false
                        }
                    VStack(spacing: 30){
                        Text("Are you sure you want to cancel this session?")
                            .font(.system(size: 25, weight: .bold))
                            .foregroundColor(.black)
                            .padding()
                        HStack(spacing: 40){
                            Button(action: {
                                if let selected = selectedClass{
                                    classes.removeAll { $0.id == selected.id }
                                    selectedClass = nil
                                }
                                    showCancelledMessage = false
                                    showAlert = false
                            }){
                                Text("Yes")
                                    .font(.system(size: 25, weight: .bold))
                                    .foregroundColor(Color.red)
                                    .padding(.top, 10)
                            }
                            Button(action: {
                                showCancelledMessage = false
                            }){
                                Text("No")
                                    .font(.system(size: 25, weight: .bold))
                                    .foregroundColor(Color.black)
                                    .padding(.top, 10)
                            }
                            
                        }
                    }
                    .padding()
                    .frame(width: 300, height: 270)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .zIndex(1)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            
            .onAppear{
                if initials.isEmpty{
                    let firstInitial = String(firstname.prefix(1))
                    let lastInitial = String(lastname.prefix(1))
                    initials.append(firstInitial)
                    initials.append(lastInitial)
                    
                }
            }
        }
    }
    
    private func cancellSession(){
        if let selectedClass = selectedClass{
            classes.removeAll{ $0.id == selectedClass.id }
            
            self.selectedClass = nil
            showAlert = false
        }
    }
}

#Preview {
    myClasses()
}
