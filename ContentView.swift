//
//  ContentView.swift
//  RawPerformance
//
//  Created by Andrea Guerra on 5/2/25.
//

import SwiftUI

struct ContentView: View {
    @State var showSignUp: Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .edgesIgnoringSafeArea(.all)
                if showSignUp{
                    signupScreen()
                }
                else{
                    ZStack{
                        Color.black
                            .edgesIgnoringSafeArea(.all)
                        Image("rawP")
                            .resizable()
                            .cornerRadius(1)
                            .aspectRatio(contentMode: .fit)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                            withAnimation(.easeInOut(duration: 1)){
                                showSignUp = true
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
