//
//  SecondView.swift
//  Approval Matrix
//
//  Created by Anh Tú on 09/05/2023.
//

import SwiftUI

struct SecondView: View {
    @State private var isBack = false
    @State private var showFeatures = false
    @State private var name = ""
    @State private var feature = ""
    var body: some View {
        NavigationView{
            ZStack{
                Color("primary")
                    .ignoresSafeArea()
                Color.white
                    .padding(.top,600)
                    .ignoresSafeArea()
                ScrollView(.vertical,showsIndicators: false){
                    VStack(alignment: .center){
                        ZStack(alignment: .top){
                            Image("vector")
                                .resizable()
                                .frame(width: 400,height: 450)
                            HStack{
                                NavigationLink(destination: FirstView()) {
                                    Image(systemName: "chevron.left.circle.fill")
                                        .foregroundColor(Color.white)
                                        .font(.title)
                                }
                                Spacer()
                                Text("Approval Matrix")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 18))
                                    .padding()
                                Spacer()
                            }
                            .padding(.horizontal,20)
                            .background(Color("primary"))
                            VStack{
                                Text("Create New Approval Matrix")
                                    .padding(.vertical,20)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("primary"))
                                Divider()
                                VStack(alignment: .leading){
                                    Text("Approval Matrix Alias")
                                    TextField("Input Matrix Name", text: $name)
                                        .padding(.horizontal,20)
                                        .padding(.vertical,14)
                                        .overlay(RoundedRectangle(cornerRadius: 15)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(Color("border")))
                                }
                                .padding(.top,20)
                                .padding(.vertical,20)
                                VStack(alignment: .leading){
                                    Text("Feature")
                                    Button(action: {
                                        self.showFeatures = true
                                    }){
                                        HStack{
                                            TextField("Select Feature",text: $feature)
                                                .frame(
                                                    width: 247,
                                                    alignment: .leading
                                                )
                                            Spacer()
                                            Image(systemName: "chevron.down")
                                        }
                                        .foregroundColor(Color("border"))
                                        .padding(.horizontal,20)
                                        .padding(.vertical,14)
                                        .overlay(RoundedRectangle(cornerRadius: 15)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(Color("border")))
                                    }.sheet(isPresented: $showFeatures){
                                        SelectFeatureView()
                                    }
                                }
                                .padding(.vertical,20)
                                Divider()
                                    .padding(.top,25)
                               //
                                VStack(alignment: .leading){
                                    Text("Range of Approval (Minimum)")
                                    HStack {
                                        Text("IDR")
                                            .foregroundColor(Color.black)
                                            .padding(.trailing,20)
                                        TextField("Input Text Here",text: $feature)
                                        Spacer()
                                    }
                                    .foregroundColor(Color("border")).padding(.horizontal,20)
                                        .padding(.vertical,14)
                                        .overlay(RoundedRectangle(cornerRadius: 15)
                                            .stroke(lineWidth: 1)
                                        .foregroundColor(Color("border")))
                                }
                                .padding(.vertical,20)
                                VStack(alignment: .leading){
                                    Text("Range of Approval (Maximum)")
                                    HStack {
                                        Text("IDR")
                                            .foregroundColor(Color.black)
                                            .padding(.trailing,20)
                                        TextField("Input Text Here",text: $feature)
                                        Spacer()
                                    }
                                    .foregroundColor(Color("border")).padding(.horizontal,20)
                                        .padding(.vertical,14)
                                        .overlay(RoundedRectangle(cornerRadius: 15)
                                            .stroke(lineWidth: 1)
                                        .foregroundColor(Color("border")))
                                }
                                .padding(.vertical,20)
                                VStack(alignment: .leading){
                                    Text("Number of Approval")
                                    HStack {
                                        Text("IDR")
                                            .foregroundColor(Color.black)
                                            .padding(.trailing,20)
                                        TextField("Input Number",text: $feature)
                                        Spacer()
                                    }
                                    .foregroundColor(Color("border")).padding(.horizontal,20)
                                        .padding(.vertical,14)
                                        .overlay(RoundedRectangle(cornerRadius: 15)
                                            .stroke(lineWidth: 1)
                                        .foregroundColor(Color("border")))
                                }
                                .padding(.vertical,20)
                                
                                Text("ADD TO :LIST")
                                    .padding()
                                    .frame(width: 350)
                                    .foregroundColor(Color("border"))
                                    .background(Color("light_border"))
                                    .cornerRadius(12)
                                Text("RESET")
                                    .padding()
                                    .frame(width: 350)
                                    .foregroundColor(Color("border"))
                                    .background(Color("light_border"))
                                    .cornerRadius(12)
                            }
                            .padding(.top,45)
                            .padding(.horizontal,30)
                        }
                        .background(Color.white)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
