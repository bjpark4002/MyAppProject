//
//  AddingProjectView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 5/29/22.
//


// 프로젝트를 추가할 수 있는 화면
import SwiftUI

struct AddingProjectView: View {
    @State var nameInput : String = ""
    @State var description: String = ""
    @State var startDate : Date = Date.now
    @State var endDate : Date = Date.now
    @State var notes : String = ""
    @State var completeCreate : Bool = false
    
    @State var isHomeView : Bool = false
    
    var body: some View {
        
        
        if isHomeView == true{
            HomeView()
        }else{
            VStack{
                Spacer()

                TextField("Project Name",text: $nameInput).padding()
                TextField("Description",text: $description).padding()

                DatePicker(selection: $startDate, in: ...Date.now, displayedComponents: .date) {
                    Text("Start Date").padding()
                            }
                DatePicker(selection: $startDate, in: ...Date.now, displayedComponents: .date) {
                    Text("End Date").padding()
                            }
                TextField("Notes",text: $notes).padding()

                
                Spacer()
                HStack{
                    Button {
                        // store data logic happens
                        isHomeView = true
                    } label: {
                        Text("Add").padding()
                    }

                    
                    Button {
                        isHomeView = true
                    } label: {
                        Text("Skip").padding()
                    }

                }
            }.multilineTextAlignment(.center)
            
        }
       
        
    }
}

struct AddingProjectView_Previews: PreviewProvider {
    static var previews: some View {
        AddingProjectView(nameInput:"", description: "", startDate: Date(), endDate: Date() , notes: ""
        )
    }
}
