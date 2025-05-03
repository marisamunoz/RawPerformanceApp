//
//  forgotPassword.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/3/25.
//

import SwiftUI

struct forgotPassword: View {
    @State var email: String = ""
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            Text("   FORGOT\nPASSWORD")
                .foregroundColor(.white)
                .font(.system(size: 45, weight: .bold))
                .padding(.bottom, 500)
            VStack{

                TextField("Email", text: $email)
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
                    .padding(.top, 200)
                Button("Reset Password") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .padding()
                .frame(width: 325)
                .background(Color(red: 0.5, green: 0, blue: 0))
                .font(.system(size: 20, weight: .bold))
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding(.bottom, 300)
                
                Text("Remember your password?")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                
                NavigationLink(destination: loginScreen()){
                    Text("Log In")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    forgotPassword()
}
