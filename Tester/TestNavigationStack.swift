//
//  TestNavigationStack.swift
//  Tester
//
//  Created by marty.academy on 4/5/24.
//

import SwiftUI

struct TestNavigationStack: View {
    
    @State var path = [0]
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                NavigationLink("스크린 1", value: 1)
                NavigationLink("스크린 2", value: 2)
                NavigationLink("스크린 3", value: 3)
                NavigationLink("스크린 4", value: 4)
            }
            .navigationDestination(for: Int.self) { value in
                makingSubNavigationLinks(pathValue: value)
            }
        }
    }
}

@ViewBuilder
func makingSubNavigationLinks (pathValue : Int) -> some View {
    var subPathValue = pathValue * 4
    
    VStack {
        NavigationLink("스크린 \(subPathValue + 1)", value: subPathValue + 1)
        NavigationLink("스크린 \(subPathValue + 2)", value: subPathValue + 2)
        NavigationLink("스크린 \(subPathValue + 3)", value: subPathValue + 3)
        NavigationLink("스크린 \(subPathValue + 4)", value: subPathValue + 4)
    }
    .navigationDestination(for: Int.self) { value in
        
    }
    
}

#Preview {
    TestNavigationStack()
}
