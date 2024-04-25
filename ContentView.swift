//
//  ContentView.swift
//  TravelAgencyExcercise
//
//  Created by Luis Esteban Haro on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("airplane")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack {
                    Text("Travel Agency App")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.black)
                                .frame(width: 500, height: 150)
                            
                            Text("Welcome to our Travel Agency App! Plan your dream vacations, discover amazing destinations, and book your flights and accommodations with ease.")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .padding()
                                .padding(.horizontal, 40)
                        }
                        
                        NavigationLink {
                            TravelPlans()
                        } label: {
                            Text("Take me to the plans")
                                .foregroundColor(.yellow)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 1)
                                )
                        }
                        .padding(.top, 20)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
