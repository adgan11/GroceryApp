//
//  ContentView.swift
//  GroceryAppTut
//
//  Created by Ahmed Gagan on 15/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                Text("We deliver\n grocery at your\n doorstep")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Text("Grocerr gives you fresh vegetables and fruits,\nOrder fresh at grocerr")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                    changeScreen = true
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Get Started")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.frame(width: 200, height: 70)
                    .foregroundColor(.purple)
            }
            .navigationDestination(isPresented: $changeScreen) {
                Shop()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
