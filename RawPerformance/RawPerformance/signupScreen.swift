//
//  loginScreen.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/2/25.
//

import SwiftUI

struct signupScreen: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            
            Text("REGISTER\nACCOUNT")
                .foregroundColor(.white)
                .font(.system(size: 45, weight: .bold))
                .padding(.bottom, 400)
            
            VStack{
                TextField("Username", text: $username)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 325)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 3)
                    )
                    .padding(.bottom, 2)
                    .padding(.top, 200)
                
                TextField("Password", text: $password)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.white)
                    .cornerRadius(10)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 325)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 3)
                    )
                    .padding(.bottom, 20)
                Button("Sign Up") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                .frame(width: 325)
                .font(.system(size: 20, weight: .bold))
                .background(Color(red: 0.5, green: 0, blue: 0))
                .foregroundStyle(.white)
                .cornerRadius(10)
                    .padding(.bottom, 20)
                
                
                Text("Already have an account?")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .light))
                
            NavigationLink(destination: loginScreen()) {
                Text("Log In")
                    .padding(.top, 5)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                    .underline(true, color: Color(red: 0.5, green: 0, blue: 0))
                }
        
            }
            .padding(.bottom, 10)
        }
    }
}


#Preview {
    signupScreen()
}
