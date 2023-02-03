//
//  HomeView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 5/29/22.
//

// 프로젝트 리스트를 보여주는 메인화면
import SwiftUI

struct HomeView: View {
    @State private var selectedTabView = 1 //
    @State private var addingProjectView = false
    var body: some View {
        if addingProjectView == true{
            AddingProjectView()
        }
        else{
            HStack{
                Spacer()
                Button {
                    addingProjectView.toggle()
                } label: {
                    Text("Add New Task")
                }
            }
            
            TabView(selection: $selectedTabView){
                
                InProgressProjectView().tabItem {
                    Image(systemName: "1.square.fill")
                    Text("In Progress")
                }.tag(1)
                
                CompletedProjectView().tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Completed")
                }.tag(2)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
