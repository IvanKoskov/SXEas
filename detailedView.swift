// detailedView.swift
// SXEas
//
// Created by Evan Matthew on 23/2/2568 BE.

import SwiftUI

struct detailedView: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showAlert.toggle()
            }
            
            // Custom alert view with text and emoji flag
            if showAlert {
                VStack {
                    Text("🇩🇪") // Flag emoji (Germany here, replace with other country code)
                        .font(.system(size: 100)) // Adjust size as needed
                        .padding()
                    
                    Text("This is a custom message with an emoji of a country's flag.")
                        .font(.headline)
                        .padding()
                    
                    Button("Dismiss") {
                        showAlert = false
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding() // You can add this padding to the VStack if needed
            }
        }
    }
}

struct detailedView_Previews: PreviewProvider {
    static var previews: some View {
        detailedView()
    }
}

