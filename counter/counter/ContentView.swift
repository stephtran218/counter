//
//  ContentView.swift
//  counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI


struct ContentView: View {
    //This is a variable in Swift UI which can only be used in this file since it's private
    @State private var count : Int = 0
    var body: some View {
        //this ensures the text would display in a vertical order so what's coded first will be displayed frist (top to bottom)
        VStack {
            Text("Click buttons below to change the counter")
                //this padding adds space between the two texts
                .padding()
            //this will display the current # of clicks
            Text("Count: \(count)")
        }
        //this places the button horizontally, placing it from left to right
        HStack {
            //the quote is the text that will be displayed on the button, and the action calls the function
            Button("Increment", action: addOne)
                //These elements are responsible for the design of the button (blue background, white font color, rounded edges)
                .padding()
                . background(Color.blue)
                . foregroundColor(.white)
                . cornerRadius(10)
            //This button will say decrement and calls the function to sub one
            Button("Decrement", action: minusOne)
                //These are the design elements for the decrement button (blue background, white font color, and rounded edges)
                . padding()
                . background(Color.blue)
                . foregroundColor(.white)
                . cornerRadius(10)
        }
        
        .padding()
    }
    //every time the button "increment" gets clicked, the count will increase in one
    func addOne(){
        count += 1
    }
    //every time the button "decrement" gets clicked, the count will subtract in one
    func minusOne(){
        //the code will only sub one when the current count is greater than 0, once it is 0, the code won't run so it can't go into negatives
        if count > 0{
            count -= 1
        }
    }
}

#Preview {
    ContentView()
}
