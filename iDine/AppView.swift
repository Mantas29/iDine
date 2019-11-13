//
//  AppView.swift
//  iDine
//
//  Created by T1001 on 2019-11-13.
//  Copyright © 2019 T1001. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
            }
            
            OrderView()
                .tabItem{
                    Image(systemName: "square.and.pencil")
                    Text("Order")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        AppView().environmentObject(order)
    }
}
