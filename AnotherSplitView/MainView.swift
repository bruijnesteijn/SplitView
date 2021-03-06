//
//  MainView.swift
//  AnotherSplitView
//
//  Created by Bart Bruijnesteijn on 06/04/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            ListView()
            DetailedView1(name: "Option 1")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct ListView: View {
    var body: some View {
        VStack {
            NavigationLink("Option 1", destination: DetailedView1(name: "Option 1"))
                .padding()
            NavigationLink("Option 2", destination: DetailedView2(name: "Option 2"))
                .padding()
            NavigationLink("Option 3", destination: DetailedView3(name: "Option 3"))
                .padding()
    }
    .navigationBarTitle("Options")
    
}
}

struct DetailedView1: View {
    var name = ""
    
    var body: some View {
        Text(name)
            
            .navigationBarTitle(name)
    }
}
struct DetailedView2: View {
    var name = ""
    
    var body: some View {
        Text(name)
            
            .navigationBarTitle(name)
    }
}
struct DetailedView3: View {
    var name = ""
    
    var body: some View {
        Text(name)
            
            .navigationBarTitle(name)
    }
}
