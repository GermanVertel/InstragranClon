//
//  SearchView.swift
//  InstragranClon
//
//  Created by German David Vertel Narvaez on 15/08/25.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(0 ... 15, id: \.self) { user in
                        HStack{
                            Image("german")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("German David Vertel Narvaez")
                                    .font(.caption)
                                Text("@german_david_n")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                
                                
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search ..." )
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
