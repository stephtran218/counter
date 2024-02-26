//
//  ContentView.swift
//  counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI


struct ContentView: View {
    @State private var count : Int = 0
    var body: some View {
        VStack {
            Text("Click buttons below to change the counter")
                .padding()
            Text("Count: \(count)")
        }
        HStack {
            Button("Increment", action: addOne)
                .padding()
                . background(Color.blue)
                . foregroundColor(.white)
                . cornerRadius(10)
            Button("Decrement", action: minusOne)
                .padding()
                . background(Color.blue)
                . foregroundColor(.white)
                . cornerRadius(10)

        }
        
        .padding()
    }
    func addOne(){
        count += 1
    }
    func minusOne(){
        if count > 0{
            count -= 1
        }
    }
}

#Preview {
    ContentView()
}
