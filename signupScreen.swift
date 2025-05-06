//
//  signupScreen
//  RawPerformance
//
//  Created by Andrea Guerra on 5/2/25.
//

import SwiftUI

struct signupScreen: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var email: String = ""
    @State var PhoneNumber: String = ""
    @State private var signupNav = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                
                Text("REGISTER\nACCOUNT")
                    .foregroundColor(.white)
                    .font(.system(size: 45, weight: .bold))
                    .padding(.bottom, 600)
                
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
                    
                    TextField("First Name", text: $firstname)
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
                    
                    TextField("Last Name", text: $lastname)
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
                    TextField("Phone Number", text: $PhoneNumber)
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
                    NavigationLink(destination: signupScreen()){
                        Button("Sign Up") {
                            saveSignUpInfo()
                            signupNav = true
                        }
                    }
                        .padding()
                        .frame(width: 325)
                        .font(.system(size: 20, weight: .bold))
                        .background(Color(red: 0.5, green: 0, blue: 0))
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                        .padding(.bottom, 20)
    
                    NavigationLink(destination: Menu(), isActive: $signupNav){
                        EmptyView()
                    }
                    .hidden()
                    
                    
                    Text("Already have an account?")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .light))
                    
                    NavigationLink(destination: loginScreen()) {
                        Text("Log In")
                            .padding(.top, 5)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .underline(true, color: Color(red: 0.5, green: 0, blue: 0))
                            .navigationBarBackButtonHidden(true)
                    }
                    
                }
                .padding(.bottom, 10)
            }
        }
    }
    func saveSignUpInfo(){
        UserDefaults.standard.set(username, forKey: "savedUsername")
        UserDefaults.standard.set(password, forKey: "savedPassword")
        UserDefaults.standard.set(firstname, forKey: "savedfirstname")
        UserDefaults.standard.set(lastname, forKey: "savedlastname")
        UserDefaults.standard.set(email, forKey: "savedemail")
        UserDefaults.standard.set(PhoneNumber, forKey: "savedphonenumber")
    }
}


#Preview {
    signupScreen()
}
