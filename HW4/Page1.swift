//
//  Page1.swift
//  HW4
//
//  Created by Arman on 12/7/21.
//

import SwiftUI

struct Page1: View {
    @State var showSaveSheet = false
    @State var linkModels:[LinkModel] = Storage.linkModels
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                Text(linkModels.isEmpty ? "Bookmark App" : "List")
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .frame(height: 22)
                    .padding(.top, 56)
                if linkModels.isEmpty {
                    Spacer()
                    Title1()
                    Spacer()
                } else {
                    VStack (spacing: 0){
                        List(){
                            ForEach(linkModels, id: \.self) { linkModel in
                                HStack(spacing: 0){
                                    Text("\(linkModel.title)")
                                        .font(.system(size: 17))
                                    Spacer()
                                    Image("Group")
                                }
                                .padding(.top, 39)
                                .padding(.bottom,11)
                                .onTapGesture {
                                    openURL(URL(string: linkModel.linkURL)!)
                                }
                            }.onDelete(perform: delete)
                                .listRowBackground(Color("MyGray"))
                        }
                        .listStyle(.grouped)
                    }.background(Color("MyGray"))
                    Spacer()
                }
                Button(action: {
                    self.showSaveSheet = true
                }){
                    ZStack {
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.black)
                        Text("Add bookmark")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }.frame(height: 58)
                        .padding(.horizontal)
                }
                .padding(.bottom, 50)
            }
            .background(Color("MyGray"))
            .edgesIgnoringSafeArea(.all)
            
            Page2(isShowing: $showSaveSheet, linkModels: $linkModels)
        }
    }
    func delete (at offsets: IndexSet) {
        linkModels.remove(atOffsets: offsets)
        Storage.linkModels.remove(atOffsets: offsets)
    }
}

struct Title1: View {
    var body: some View {
        Text("Save your first\n bookmark")
        .font(.system(size: 36, weight: .bold))
        .foregroundColor(.black)
        .frame(height: 92)
        .multilineTextAlignment(.center)
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1()
    }
}
