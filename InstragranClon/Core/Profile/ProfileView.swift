//
//  ProfileView.swift
//  InstragranClon
//
//  Created by German David Vertel Narvaez on 8/08/25.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                //header
                VStack(spacing: 10){
                    // pic and stats
                    HStack{
                        Image("german")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        Spacer()
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 3, title: "Followes")
                        UserStatView(value: 3, title: "Following")
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4){
                        Text("German David")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Monteria, Colombia")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    //action button
                    
                    Button{
                        //
                    }label: {
                        Text( "Edit Porfile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                }
                
                // post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("german")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
