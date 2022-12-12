//
//  AddingProjectView.swift
//  MyAppProject
//
//  Created by Bumjin Park on 5/29/22.
//


// 프로젝트를 추가할 수 있는 화면
import SwiftUI

struct AddingProjectView: View {
    @State var nameInput : String
    @State var description: String
    @State var startDate : Date
    @State var endDate : Date
    
    
    var body: some View {
        Spacer()
        VStack{
            TextField("Project Name",text: $nameInput).padding()
            TextField("Description",text: $nameInput).padding()

            DatePicker(selection: $startDate, in: ...Date.now, displayedComponents: .date) {
                Text("Start Date").padding()
                        }
            DatePicker(selection: $startDate, in: ...Date.now, displayedComponents: .date) {
                Text("End Date").padding()
                        }
        }.multilineTextAlignment(.center)
        
        Spacer()
        
        Button(action: {
           //store in the userDefault
        })
        {
            Text("Add").padding()
        }
    }
}

struct AddingProjectView_Previews: PreviewProvider {
    static var previews: some View {
        AddingProjectView(nameInput:"", description: "", startDate: Date(), endDate: Date() )
    }
}
