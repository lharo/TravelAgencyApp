//
//  LocationDetail.swift
//  TravelAgencyExcercise
//
//  Created by Luis Esteban Haro on 17/04/24.
//

import SwiftUI

struct LocationDetail: View {
    let location: Location
    
    var body: some View {
        ZStack {
            Image("island")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.8)
            
            VStack(alignment: .leading, spacing: 20) {
                
                ForEach(location.plans, id: \.name) { plan in
                    VStack(alignment: .leading) {
                        Text(plan.name)
                            .font(.title3)
                            .bold()
                            .foregroundColor(.black)
                        
                        Text("Price: $\(plan.price)")
                            .foregroundColor(.black)
                        
                        Text("Duration: \(plan.duration)")
                            .foregroundColor(.black)
                        
                        Text("Description: \(plan.description)")
                            .foregroundColor(.black)
                        
                        Text("Included: \(plan.included.joined(separator: ", "))")
                            .foregroundColor(.black)
                        
                        Text("Optional: \(plan.optional.joined(separator: ", "))")
                            .foregroundColor(.black)
                        
                        Text("Difficulty: \(plan.difficulty)")
                            .foregroundColor(.black)
                    }
                }
            }
            .padding(.horizontal, 100)
        }
        .navigationTitle(location.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: Location(name: "Italy", plans: [
                Plan(name: "Explore Colosseum", price: 100, description: "Visit the iconic Colosseum in Rome and explore its rich history.", duration: "Half day", included: ["Guided tour", "Entrance fees"], optional: ["Transportation", "Meals"], difficulty: "Easy"),
                Plan(name: "Guided Tour of Rome", price: 200, description: "Discover the beauty of Rome with a knowledgeable local guide.", duration: "Full day", included: ["Transportation", "Guide", "Entrance fees"], optional: ["Meals"], difficulty: "Moderate")
            ]))
        }
    }
}
