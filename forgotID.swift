//
//  forgotID.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/3/25.
//

import SwiftUI

struct forgotID: View {
    @State var email: String = ""
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            Text("FORGOT ID")
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
            Button("Send ID") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(width: 325)
            .background(Color(red: 0.5, green: 0, blue: 0))
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.white)
            .cornerRadius(10)
            .padding(.bottom, 10)
            .padding(.top, 10)
            }
            Text("Remember your ID?")
                .foregroundColor(.white)
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .light))
                .padding(.top, 600)
            NavigationLink(destination: loginScreen()){
                Text("Log In")
                    .padding(.top, 700)
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    forgotID()
}
