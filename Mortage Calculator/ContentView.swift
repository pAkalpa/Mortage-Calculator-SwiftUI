//
//  ContentView.swift
//  Mortage Calculator
//
//  Created by Pasindu Akalpa on 2023-03-13.
//

/*
 
 Formula for mortgage payments: M = P[r(1+r)^n/((1+r)^n)-1)]
 M = the total monthly mortgage payment
 P = the principal loan amount(Purchase Price - Down Payment)
 r = your monthly interest rate
 n = number of payments over the loan’s lifetime.
 
 */

import SwiftUI

struct ContentView: View {
    @State private var purchaseP: String = ""
    @State private var downP: String = ""
    @State private var repaymentT: String = ""
    @State private var interestR: String = ""
    @State private var loanAmount: String = ""
    @State private var estPr: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Text("Mortage Calculator")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.newPrimaryColor)
            VStack(spacing: 10) {
                TextField("Enter Purchase Price", text: $purchaseP)
                    .frame(height: 35)
                    .padding(.horizontal, 10)
                    .border(.purple, width: 4)
                    .cornerRadius(5)
                TextField("Enter Down Payment", text: $downP)
                    .frame(height: 35)
                    .padding(.horizontal, 10)
                    .border(.purple, width: 4)
                    .cornerRadius(5)
                TextField("Enter Repayment Time", text: $repaymentT)
                    .frame(height: 35)
                    .padding(.horizontal, 10)
                    .border(.purple, width: 4)
                    .cornerRadius(5)
                TextField("Enter Interest Rate", text: $interestR)
                    .frame(height: 35)
                    .padding(.horizontal, 10)
                    .border(.purple, width: 4)
                    .cornerRadius(5)
            }
            .font(.system(size: 20, weight: .semibold))
            .cornerRadius(5)
            .padding(.horizontal, 20)
            
            VStack {
                HStack {
                    Text("Loan amount")
                        .font(.title3)
                    Spacer()
                }
                .padding(.bottom, 3)
                HStack {
                    Text("$\(loanAmount)")
                        .font(.system(size: 40, weight: .semibold))
                    Spacer()
                }
            }
            .foregroundColor(.newPrimaryColor)
            .frame(maxWidth: .infinity)
            .padding(.bottom, 20)
            VStack {
                HStack {
                    Text("Estimated pr. month:")
                        .font(.title3)
                    Spacer()
                }
                .padding(.bottom, 3)
                HStack {
                    Text("$\(estPr)")
                        .font(.system(size: 40, weight: .semibold))
                    Spacer()
                }
            }
            .foregroundColor(.newPrimaryColor)
            .frame(maxWidth: .infinity)
            Button {
                
            } label: {
                Text("Get a mortage quote")
                    .font(.system(size: 20, weight: .bold))
                    .padding(20)
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .padding(.vertical, 30)
            Spacer()
        }
        .padding()
    }
    func calculateMortage() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static let newPrimaryColor = Color("FontColor")
    static let edgeColor = Color("EdgeColor")
}
