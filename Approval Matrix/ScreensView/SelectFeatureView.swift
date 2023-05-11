//
//  SelectFeatureView.swift
//  Approval Matrix
//
//  Created by Anh Tú on 10/05/2023.
//

import SwiftUI

struct SelectFeatureView: View {
    @State private var key = ""
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Select Feature")
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "xmark.circle.fill")
            }
            .padding()
            .padding(.horizontal)
            
            HStack(){
                Image(systemName: "magnifyingglass")
                TextField("Search Keyword",text: $key)
            }
            .padding()
            .frame(width: 315,height: 48)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color("border")))
            
            VStack(spacing: 0){
                HStack{
                    Text("Default")
                    Spacer()
                    Image(systemName: "checkmark.square")
                        .fontWeight(.light)
                        .foregroundColor(Color("btn"))
                }
                .padding()
                .padding(.horizontal)
                .background(Color("light_grey"))
                
                FeatureView(title: "Transfer Online", color_bg: "light_grey", color_icon: "border", name_icon: "square")
                FeatureView(title: "FeatureC", color_bg: "white", color_icon: "border", name_icon: "square")
                FeatureView(title: "FeatureD", color_bg: "white", color_icon: "border", name_icon: "square")
                FeatureView(title: "FeatureE", color_bg: "white", color_icon: "border", name_icon: "square")
                FeatureView(title: "FeatureF", color_bg: "white", color_icon: "border", name_icon: "square")
                FeatureView(title: "FeatureG", color_bg: "white", color_icon: "border", name_icon: "square")
            }
        }
//        .frame(width: 375,height: 586,alignment: .top)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 1)
                .foregroundColor(Color("border")))
    }
}

struct SelectFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        SelectFeatureView()
    }
}
