//
//  loginScreen.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/3/25.
//

import SwiftUI

struct loginScreen: View {
    @State private var navigateToMenu = false
    @State var id: String = ""
    @State var password: String = ""
    @State private var showError = false
    @State private var errorMessage = ""
    var body: some View {
        NavigationStack{
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            Text("LOG IN")
                .foregroundColor(.white)
                .font(.system(size: 45, weight: .bold))
                .padding(.bottom, 600)
                
            VStack{
                TextField("ID", text: $id)
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
                    .padding(.bottom, 1)
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
               if showError {
                    Text(errorMessage)
                       .foregroundColor(.red)
                       .font(.system(size: 15, weight: .bold))
                       .padding(.bottom, 5)
                }
                Button("Log In") {
                    validateLogin()
                }
                .padding()
                .frame(width: 325)
                .background(Color(red: 0.5, green: 0, blue: 0))
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(10)
                .padding(.bottom, 10)
                
                NavigationLink(destination: Menu(), isActive: $navigateToMenu){
                    EmptyView()
                }
        
                NavigationLink(destination: forgotID()){
                    Text("forgot ID?")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .light))
                        .padding(.bottom, 10)
                }
                NavigationLink(destination: forgotPassword()){
                    Text("Reset Password?")
                        .font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                }
                Text("Don't have an account?")
                    .padding(.top, 150)
                    .font(.system(size: 20, weight: .light))
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                
                NavigationLink(destination: signupScreen()){
                    Text("Sign Up")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .underline(true, color: Color(red: 0.5, green: 0, blue: 0))
                        .navigationBarBackButtonHidden(true)
                }
                }
            }
        }
    }
    func validateLogin(){
        let savedUsername = UserDefaults.standard.string(forKey: "savedUsername") ?? ""
        let savedPassword = UserDefaults.standard.string(forKey: "savedPassword") ?? ""
        if id == savedUsername && password == savedPassword{
            showError = false
            navigateToMenu = true
        }
        else{
            showError = true
            errorMessage = "Incorrect ID or Password/nPlease try again."
        }
    }
}


#Preview {
    loginScreen()
}
