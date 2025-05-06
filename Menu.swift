//
//  Menu.swift
//  RawPerformance
//  This page will be the menu where users can view their location and upcoming sessions
//  Created by Andrea Guerra on 5/3/25.

import SwiftUI

struct Menu: View {
    @State private var popupRes = false
    @State private var cancellationNotification = false
    @State private var cancellation: [String] = ["Thursday 8am"]
    @State var initials: [String] = []
    var body: some View {
        let firstname = UserDefaults.standard.string(forKey: "savedfirstname") ?? ""
        let lastname = UserDefaults.standard.string(forKey: "savedlastname") ?? ""
        NavigationStack{
            ZStack(alignment: .topLeading){
                Color(red: 0.4, green: 0.4, blue: 0.4).ignoresSafeArea()
                ZStack{
                    NavigationLink(destination: Settings()){
                        
                        Circle()
                            .fill(Color(.lightGray))
                            .frame(width: 50, height: 50)
                            .padding(.leading, 40)
                            .padding(.top, 130)
                            .shadow(radius: 5)
                    }
                    .navigationBarBackButtonHidden(false)
                    Text(initials.joined())
                        .font(.headline)
                        .foregroundColor(.black)
                        .font(.system(size: 100, weight: .bold, design: .monospaced))
                        .padding(.leading, 40)
                        .padding(.top, 130)
                }
               
                //setting for the lower potion of the screen in the white area
                ZStack{
                    Rectangle()
                        .fill(Color(.lightGray))
                        .frame(width: 410, height: 650)
                        .padding(.top, 200)
                        .cornerRadius(10)
                    NavigationLink(destination: myClasses()){
                        HStack(spacing: 5){
                            Text("View All")
                                .font(.system(size: 15, weight: .bold, design: .monospaced))
                            Image(systemName: "chevron.right")
                        }
                    }
                    
                    .foregroundColor(Color(red: 0.5, green: 0, blue: 0))
                    .padding(.bottom, 400)
                    .padding(.leading, 270)
                    Text("Upcoming")
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                        .padding(.bottom, 400)
                        .padding(.trailing, 265)
                        .foregroundColor(Color.black)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color(.black))
                        .frame(width: 375, height: 115)
                        .padding(.bottom, 250)
                        .shadow(radius: 5)
                    Text("Thursday 8am")
                        .foregroundColor(Color.white)
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .padding(.bottom, 250)
                        .onTapGesture {
                            popupRes = true
                        }
                    
                    Text("Location")
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                        .padding(.top, 25)
                        .padding(.trailing, 265)
                        .foregroundColor(Color.black)
                    
               
                        HStack(spacing: 5){
                            Text("View All")
                                .font(.system(size: 15, weight: .bold, design: .monospaced))
                            Image(systemName: "chevron.right")
            
                    }
                    
                    .foregroundColor(Color(red: 0.5, green: 0, blue: 0))
                    .padding(.top, 25)
                    .padding(.leading, 270)
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .fill(Color(.black))
                        .frame(width: 375, height: 115)
                        .padding(.top, 175)
                        .shadow(radius: 5)
                    Rectangle()
                        .fill(Color(.white))
                        .frame(width: 375, height: 130)
                        .padding(.top, 320)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    Text("Westover")
                        .font(.system(size: 16, weight: .bold, design: .monospaced))
                        .padding(.top, 225)
                        .padding(.trailing, 280)
                    Text("10665 Shaenfield Rd Unit 111 San Antonio, TX, 78245")
                        .font(.system(size: 11, weight: .light, design: .monospaced))
                        .padding(.top, 270)
                        .padding(.trailing, 12)
                    Text("Working Hours")
                        .font(.system(size: 16, weight: .bold, design: .monospaced))
                        .padding(.top, 325)
                        .padding(.trailing, 230)
                    HStack(spacing: 5){
                        Text("Today Open 5:30am - 1:00pm")
                            .font(.system(size: 14, weight: .bold, design: .monospaced))
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color(red: 0.5, green: 0, blue: 0))
                    .padding(.top, 370)
                    .padding(.trailing, 115)
                    Text("Hi " + firstname + "!")
                        .font(.system(size: 30, weight: .light, design: .monospaced))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 500)
                        .padding(.trailing, 170)
                    Rectangle()
                        .fill(Color(.white))
                        .frame(width: 450, height: 150)
                        .padding(.top, 780)
                        .cornerRadius(10)
                        Text("Classes")
                            .foregroundColor(Color.gray)
                            .font(.system(size: 20, weight: .bold, design: .monospaced))
                            .padding(.top, 760)
                            .padding(.trailing, 200)
            
                    Text("Activity")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                        .padding(.top, 760)
                        .padding(.leading, 200)
                        Image("classes")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(.top, 700)
                            .padding(.trailing, 200)
                    Image("Activity")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.top, 700)
                        .padding(.leading, 200)
                }
                
                
                //POP UP MESSAGE FOR THE RESCHEDULE/CANCELLING SESSION CLASS
                if popupRes{
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            popupRes = false
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
                        
                        Text("Cancel Session")
                            .font(.system(size: 25, weight: .bold, ))
                            .padding(.top, 10)
                            .onTapGesture {
                                cancellationNotification = true
                            }
                        Divider()
                            .frame(width: 300, height: 2)
                            .background(Color.gray)
                        
                        
                        Button(action: {
                            popupRes = false
                        }){
                            Image(systemName: "chevron.left")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                                .padding(.bottom, 100)
                        }
                    }
                    .frame(width: 300, height: 270)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .zIndex(1)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                
                    if cancellationNotification{
                        Color.black.opacity(0.4)
                            .ignoresSafeArea()
                            .onTapGesture {
                                cancellationNotification = false
                            }
                        VStack{
                            Text("Are you sure?")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            HStack(spacing: 40){
                                Button(action: {
                                    cancellationNotification = false
                                    popupRes = false
                                }){
                                    
                                    Text("Yes")
                                        .font(.system(size: 25, weight: .bold))
                                        .padding(.top, 100)
                                        .foregroundColor(Color.black)
                                }
                                Button(action: {
                                    cancellationNotification = false
                                }){
                                    Text("No")
                                        .font(.system(size: 25, weight: .bold))
                                        .padding(.top, 100)
                                        .foregroundColor(Color.black)
                                }
                            }
                        }
                        .frame(width: 300, height: 270)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .zIndex(1)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                
            }
            .navigationBarBackButtonHidden(true)
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
    

#Preview {
    Menu()
}
