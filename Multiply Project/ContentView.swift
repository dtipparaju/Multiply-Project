//
//  ContentView.swift
//  Multiply Project
//
//  Created by Dhanush Tipparaju on 9/13/22.
//

// add some comments
// here are some more comments I added to the code
import SwiftUI

struct ContentView: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Multiply App")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField("Enter your 1st number", text: $number1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Text("X")
                .font(.largeTitle)
                .fontWeight(.bold)
            TextField("Enter your 2nd number", text: $number2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Button("It's Multiplying Time!"){
                if let firstNumber = Int(number1) {
                    if let secondNumber = Int(number2) {
                        calculation = firstNumber * secondNumber
                    }
                    if calculation == 64 {
                        imageName = "Koopa" }
                    else if calculation % 2 == 0 {
                        imageName = "Cat" }
                    else if calculation % 2 == 1 {
                        imageName = "Floppa" }
                }
            }
            Text("\(calculation)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding() 
            Image(imageName)
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
