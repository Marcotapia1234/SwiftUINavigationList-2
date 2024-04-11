//
//  Detalle restaurant.swift
//  SwiftUINavigationList
//
//  Created by Marco on 11/4/24.
//

import SwiftUI

struct RestaurantDetailView: View {
    var restaurant: Restaurant
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack {
        
        
        Image(restaurant.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
        Text(restaurant.name)
            .font(.system(.title, design: .rounded))
            .fontWeight(.black)
        Spacer()
        }
        .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: Button(action : {
                    self.mode.wrappedValue.dismiss()
                }){
        Text("\(Image(systemName: "heart.fill")) \(restaurant.name)") .foregroundColor(.red)
        })
        
    }
}
struct RestaurantDetailVew_Previews: PreviewProvider{
    static var previews: some View{
        RestaurantDetailView(restaurant: Restaurant(name: "Five Leaves", image: "fiveleaves"))
    }
}
    
