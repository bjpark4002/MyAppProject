//
//  ContentView.swift
//  MyAppProject
//
//  Created by 최혜지 on 2022/05/28.
//

import SwiftUI

struct ContentView: View {
    @State var isAddingProjectView : Bool = false
    var body: some View {

        NavigationView{
            VStack{
                Text("Start the app by adding project")

                    NavigationLink(
                               /// 2
                        destination:AddingProjectView(nameInput:"", description: "", startDate: Date(), endDate: Date() ),
                               /// 3
                               label: {

                                   Text("ADD").padding()
                               })
            }
        }
        
        //if there is project residing in db, load Home view
        //else
        // show
        //
        
        
        
//        NameInputView()
        
        
        //NameInputView ->
        //ProjectStartView ->
        //AddingProjectView ->
        //HomeView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
