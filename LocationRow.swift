//
//  LocationRow.swift
//  TravelAgencyExcercise
//
//  Created by Luis Esteban Haro on 17/04/24.
//

import SwiftUI

struct LocationRow: View {
    let location: Location
    
    var body: some View {
        HStack {
            Text(location.name)
                .font(.headline)
                .foregroundColor(.white)
            
            Spacer()
            
            Text("\(location.plans.count) Plans")
                .font(.subheadline)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.black.opacity(0.5))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

struct LocationRow_Previews: PreviewProvider {
    static var previews: some View {
        LocationRow(location: Location(name: "Italy", plans: []))
    }
}
