//
//  TransferDetailView.swift
//  Approval Matrix
//
//  Created by Anh Tú on 11/05/2023.
//

import SwiftUI

struct TransferDetailView: View {
    var min : Int
    var max : Int
    var num : Int
    var body: some View {
        VStack {
            VStack{
                HStack(alignment: .top){
                    HStack{
                        Text("Range Limite of Approval")
                        Spacer()
                    }.frame(width: 140)
                    Spacer()
                    VStack{
                        HStack{
                            Text("Minimum IDR")
                            Spacer()
                            Text("\(min)")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(Color("btn"))
                        Spacer()
                        HStack{
                            Text("Maximum IDR")
                            Spacer()
                            Text("\(max)")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(Color("btn"))
                    }
                    
                }
                .padding(.bottom,10)
                .frame(height: 25)
                .font(.system(size: 10))
                Divider()
                HStack(alignment: .top){
                    HStack{
                        Text("Number of Approval")
                        Spacer()
                    }.frame(width: 140)
                    
                    Spacer()
                    Text("\(num)").foregroundColor(Color("btn"))
                }
                .padding(.vertical,10)
                .frame(height: 25)
                .font(.system(size: 10))
                Divider()
                ApprovalView(text: "GROUPPMG1, GROUPPMG2")
            }
            .padding()
            .padding(.horizontal,5)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 2)
                .foregroundColor(Color("border").opacity(0.3)))
        }
        .padding(.bottom,10)
    }
}

//struct TransferDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        TransferDetailView()
//    }
//}

struct ApprovalView: View {
    var text : String
    var body: some View {
        HStack(alignment: .top){
            HStack{
                Text("Approval 1")
                Spacer()
            }.frame(width: 140)
            
            Spacer()
            Text(text)
                .foregroundColor(Color("btn"))
        }
        .padding(.vertical,10)
        .frame(height: 25)
        .font(.system(size: 10))
    }
}
