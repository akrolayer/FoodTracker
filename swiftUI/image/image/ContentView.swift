//
//  ContentView.swift
//  image
//
//  Created by 岡本怜也 on 2020/02/03.
//  Copyright © 2020 reiya okamoto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("complex")
        .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
        //.clipShape(Circle())
.clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius:20)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
