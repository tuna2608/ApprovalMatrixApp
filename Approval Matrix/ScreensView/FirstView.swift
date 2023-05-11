//
//  FirstView.swift
//  Approval Matrix
//
//  Created by Anh Tú on 09/05/2023.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color("primary")
                    .ignoresSafeArea()
                ScrollView(.vertical,showsIndicators: false){
                    VStack(alignment: .center){
                        Text("Approval Matrix")
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                            .padding(.vertical)
                        ZStack(alignment: .top){
                            Color.white
                                .frame(height: 1300)
                                .cornerRadius(20)
                                .ignoresSafeArea()
                            //
                            VStack{
                                HStack{
                                    Spacer()
                                    NavigationLink(destination: SecondView()){
                                        HStack{
                                            Image(systemName: "plus.circle.fill")
                                                .font(.system(size: 20))
                                                .padding(.vertical,5)
                                                .padding(.leading,10)
                                            Text("Tambah New Matrix")
                                                .font(.system(size: 12))
                                                .fontWeight(.bold)
                                                .padding(.trailing,5)
                                        }.background(Color("btn"))
                                            .foregroundColor(Color.white)
                                            .cornerRadius(12)
                                    }
                                    .navigationBarBackButtonHidden()
                                }
                                .padding(.bottom,20)
                                Divider().padding(.bottom,20)
                                //
                                CatalogView(
                                    title: "Default",
                                    icon_btn: "chevron.down",
                                    color_btn: "border",
                                    color_tt: "black"
                                )
                                //
                                CatalogView(
                                    title: "Transfer Online",
                                    icon_btn: "chevron.up",
                                    color_btn: "primary",
                                    color_tt: "primary"
                                )
                                //transfer view 1
                                TransferDetailView(min: 0, max: 50000,num: 1)
                                //transfer view 2
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
                                                Text("0")
                                                    .fontWeight(.bold)
                                            }
                                            .foregroundColor(Color("btn"))
                                            Spacer()
                                            HStack{
                                                Text("Maximum IDR")
                                                Spacer()
                                                Text("50000")
                                                    .fontWeight(.bold)
                                            }
                                            .foregroundColor(Color("btn"))
                                        }
                                        
                                    }
                                    .padding(.bottom,10)
                                    .frame(height: 25)
                                    .font(.system(size: 10))
                                    HStack(alignment: .top){
                                        HStack{
                                            Text("Number of Approval")
                                            Spacer()
                                        }.frame(width: 140)
                                        
                                        Spacer()
                                        Text("2").foregroundColor(Color("btn"))
                                    }
                                    .padding(.vertical,10)
                                    .frame(height: 25)
                                    .font(.system(size: 10))
                                    Divider()
                                    HStack(alignment: .top){
                                        HStack{
                                            Text("Approval 1")
                                            Spacer()
                                        }.frame(width: 140)
                                        
                                        Spacer()
                                        VStack(alignment: .trailing){
                                            Text("GROUPPMG1, GROUPPMG2, GROUPPMG3")
                                                .foregroundColor(Color("btn"))
                                        }
                                    }
                                    .frame(height: 30)
                                    .font(.system(size: 10))
                                    HStack(alignment: .top){
                                        HStack{
                                            Text("Approval 1")
                                            Spacer()
                                        }.frame(width: 140)
                                        
                                        Spacer()
                                        VStack(alignment: .trailing){
                                            Text("GROUPPFI1, GROUPPFI2, GROUPCROSS")
                                                .foregroundColor(Color("btn"))
                                        }
                                    }
                                    .frame(height: 30)
                                    .font(.system(size: 10))
                                }
                                .padding()
                                .padding(.horizontal,5)
                                .overlay(RoundedRectangle(cornerRadius: 15)
                                    .stroke(lineWidth: 2)
                                    .foregroundColor(Color("border").opacity(0.3)))
                                Divider().padding(.top,10)
                            }
                            .padding(.all,30)
                        }
                    }
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}





