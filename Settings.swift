//
//  Settings.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/4/25.
//

import SwiftUI

struct Settings: View {
    @State var initials: [String] = []
    var body: some View {
        let firstname = UserDefaults.standard.string(forKey: "savedfirstname") ?? ""
        let lastname = UserDefaults.standard.string(forKey: "savedlastname") ?? ""
        
        NavigationStack{
            ZStack{
                Rectangle()
                    .fill(Color(.white))
                    .frame(width: 500, height: 170)
                    .underline(true, color: Color.black)
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                        Text("My Profile")
                            .foregroundColor(Color.black)
                            .fontWeight(.bold)
                            .padding(.trailing, 10)
                            .padding(.top, 140)
                        Button(action:  {
                            
                        }){
                            Image(systemName: "bell.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                                .padding(.leading, 300)
                                .padding(.top, 120)
                        }
                    }
                    .padding(.bottom, 910)
                Circle()
                    .fill(Color(.lightGray))
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 550)
                Text(initials.joined())
                    .font(.title)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.system(size: 20, weight: .bold))
                    .padding(.bottom, 550)
                
                
                Text(firstname + " " + lastname)
                    .font(.title)
                    .foregroundColor(.black)
                    .font(.system(size: 20, weight: .bold, design: .monospaced))
                    .padding(.bottom, 350)
                
                
                Button("App Profile") {
                    
                }
                .padding()
                .frame(width: 425)
                .background(Color.white)
                .foregroundStyle(.white)
                .overlay() {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 0.3)
                    
                }
                .padding(.bottom, 150)
                
                HStack(spacing: 200){
                    Text("App Porfile")
                        .font(.system(size: 20, weight: .light, ))
                        .padding(.leading, 20)
                    Image(systemName: "chevron.right")
                }
                
                .padding(.bottom, 150)
                Text("Manage app account information")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.gray)
                    .padding(.trailing, 120)
                    .padding(.bottom, 60)
                
                
                ZStack{
                    Button("Settings") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 425)
                    .background(Color.white)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                    }
                    .padding(.top, 100)
                    HStack(spacing: 150){
                        Text("General Settings")
                            .font(.system(size: 20, weight: .light))
                            .padding(.leading, 20)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top, 100)
                }
                //ID button
                ZStack{
                    Button("barcode") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 425)
                    .background(Color.white)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                    }
                    .padding(.top, 200)
                    HStack(spacing: 200){
                        Text("BarcodeID")
                            .font(.system(size: 20, weight: .light))
                            .padding(.leading, 20)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top, 200)
                }
                //support button
                ZStack{
                    Button("support") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 425)
                    .background(Color.white)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                    }
                    .padding(.top, 300)
                    HStack(spacing: 220){
                        Text("Support")
                            .font(.system(size: 20, weight: .light))
                            .padding(.leading, 20)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top, 300)
                }
                //Connected apps
                ZStack{
                    Button("Connected apps") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 425)
                    .background(Color.white)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                    }
                    .padding(.top, 400)
                    HStack(spacing: 140){
                        Text("Connected Apps")
                            .font(.system(size: 20, weight: .light))
                            .padding(.leading, 20)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top, 400)
                }
                //managing account
                ZStack{
                    Button("management") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 425)
                    .background(Color.white)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                    }
                    .padding(.top, 500)
                    HStack(spacing: 140){
                        Text("Manage Account")
                            .font(.system(size: 20, weight: .light))
                            .padding(.leading, 20)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top, 500)
                }
                //check in history
                ZStack{
                    Button("checkin") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .padding()
                    .frame(width: 425)
                    .background(Color.white)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .bold))
                    
                    .overlay() {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 0.3)
                        
                    }
                    .padding(.top, 600)
                    HStack(spacing: 140){
                        Text("Check-in History")
                            .font(.system(size: 20, weight: .light))
                            .padding(.leading, 20)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top, 600)
                }
              
                    NavigationLink(destination: loginScreen()){
                        Text("Sign Out")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color(red: 0.5, green: 0, blue: 0))
                            .padding(.top, 725)
                    }
                    .navigationBarBackButtonHidden(false)
        
                Image("profile")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.bottom, 150)
                    .padding(.trailing, 340)
                Image("setting")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.top, 100)
                    .padding(.trailing, 340)
                Image("setting")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.top, 200)
                    .padding(.trailing, 340)
                Image("squares")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.top, 400)
                    .padding(.trailing, 340)
                Image("chat")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.top, 300)
                    .padding(.trailing, 340)
                Image("profile")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.top, 500)
                    .padding(.trailing, 340)
                Image("re")
                    .resizable()
                    .frame(width: 40, height: 30)
                    .padding(.top, 600)
                    .padding(.trailing, 340)
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
}

#Preview {
    Settings()
}
