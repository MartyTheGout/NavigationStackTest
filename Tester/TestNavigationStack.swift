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
                makingSubNavigationLinks(pathValue: value, path: $path)
            }
            .frame(height: AppSizeStandard.height)
            
            VStack {
                Spacer()
                ForEach (self.path, id: \.self) { value in
                    Text("스크린 \(value)")
                        .background(
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .fill(.red)
                        )
                }
            }
            .frame(height: AppSizeStandard.height)
            
        }
    }
}

@ViewBuilder
func makingSubNavigationLinks (pathValue : Int, path: Binding<[Int]>) -> some View {
    let subPathValue = pathValue * 4
    var reversedPathForView:[Int] = path.wrappedValue.reversed()
    
    
    VStack {
        NavigationLink("스크린 \(subPathValue + 1)", value: subPathValue + 1)
        NavigationLink("스크린 \(subPathValue + 2)", value: subPathValue + 2)
        NavigationLink("스크린 \(subPathValue + 3)", value: subPathValue + 3)
        NavigationLink("스크린 \(subPathValue + 4)", value: subPathValue + 4)
    }
    .frame(height: AppSizeStandard.height)
    
    
    VStack {
        ForEach (Binding<[Int]> (
            get: {reversedPathForView},
            set: {p in reversedPathForView = p}
        ), id: \.self) { value in
            
            let colorIndex = value.wrappedValue % 4
            
            RoundedRectangle(cornerRadius: 15)
                .fill(AppSizeStandard.colorArray[colorIndex])
                .frame(width: .infinity, height: 50)
                .overlay {
                    Text("스크린 \(value.wrappedValue)")
                }
                .padding([.leading, .trailing])
        }
    }.frame(height: AppSizeStandard.height)
    
}

#Preview {
    TestNavigationStack()
}
