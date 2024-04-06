//
//  ContentView.swift
//  Tester
//
//  Created by marty.academy on 3/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, world!")
                .alignmentGuide(.leading) { d in -d[.trailing] }
            Text("This is a longer line of text")
//            Text("This is a longer line of text")
//            Text("This is a longer line of text")
//                .alignmentGuide(.leading) { d in -d[.trailing] }
//            Text("This is a longer line of text")
//            Text("This is a longer line of text")
//                .alignmentGuide(.leading) { d in d[.trailing] }
//            Text("This is a longer line of text")
        }.background(.green)
    }
    
//    var body: some View {
//        VStack(alignment: .leading) {
//            ForEach(0..<10) { position in
//                Text("Number \(position)")
//                    .alignmentGuide(.leading) { _ in Double(position) * -10 }
//            }
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)
//    }

}

#Preview {
    ContentView()
}
