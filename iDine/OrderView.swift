//
//  OrderView.swift
//  iDine
//
//  Created by T1001 on 2019-11-13.
//  Copyright © 2019 T1001. All rights reserved.
//

import SwiftUI

struct OrderView : View {
   @EnvironmentObject var order: Order
   var body: some View {
      NavigationView {
         List {
            Section {
                ForEach(order.items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("$\(item.price)")
                    }
                }
            }
            Section {
                NavigationLink(destination: CheckoutView()) {
                    Text("Place Order") }
            }
         }
         .navigationBarTitle("Order")
        .listStyle(GroupedListStyle()) }
    }
}

struct OrderView_Previews: PreviewProvider { static let order = Order()
static var previews: some View { OrderView().environmentObject(order)
} }
