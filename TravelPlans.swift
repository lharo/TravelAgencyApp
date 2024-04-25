//
//  TravelPlans.swift
//  TravelAgencyExcercise
//
//  Created by Luis Esteban Haro on 17/04/24.
//

import SwiftUI

struct TravelPlans: View {

    let travelLocations = TravelData.getLocationsFromJSON()
    
    var body: some View {
           ZStack {
               Image("path")
                   .resizable()
                   .scaledToFill()
                   .edgesIgnoringSafeArea(.all)
                   .opacity(0.8)
               
               VStack {
                   Text("Travel Locations")
                       .font(.title)
                       .fontWeight(.bold)
                       .foregroundColor(.white)
                       .padding(.top, 50)
                   
                   ScrollView {
                       ForEach(travelLocations, id: \.name) { location in
                           NavigationLink(destination: LocationDetail(location: location)) {
                               LocationRow(location: location)
                           }
                           .buttonStyle(PlainButtonStyle())
                       }
                   }
               }
               .padding(.horizontal, 50)
           }.navigationBarBackButtonHidden()
       }
    
}


struct TravelPlans_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            TravelPlans()
        }
    }
}
