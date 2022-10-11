//
//  ContentView.swift
//  complexUI
//
//  Created by hazem smawy on 10/11/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PREPERTY
   
    // MARK: - BODY
    var body: some View {
      Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home:View {
    // MARK: - PREPERTY
    @State var color = 0
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                VStack {
                    Image(color == 0 ? "lampOne": "lampTow")
                        .resizable()
                        .scaledToFill()
                        .frame(height:300)
                        .padding(.top, 20)
                    
                    HStack(spacing: 20){
                        Button {
                            color = 0
                        } label: {
                            VStack(spacing: 8){
                                ZStack {
                                    Circle()
                                        .fill(.yellow)
                                        .frame(width: 20, height: 20)
                                    
                                    Circle()
                                        .stroke(color == 0 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                    
                                  
                                }
                                Text("Yellow")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        
                        Button {
                            color = 1
                        } label: {
                            VStack(spacing: 8){
                                ZStack {
                                    Circle()
                                        .fill(.orange)
                                        .frame(width: 20, height: 20)
                                    
                                    Circle()
                                        .stroke(color == 1 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
    
                                }
                                Text("Orange")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }

                    }
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                }
                   
                
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "arrow.left")
                            .renderingMode(.original)
                            .font(.title2)
                    }
                    .padding(.leading, 10)
                    .padding(.top, 20)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "cart")
                            .font(.title)
                    }
                    .padding(.horizontal, 25)
                    .padding(.vertical, 20)
                    .background()
                    .clipShape(CustomShape(corner: .bottomLeft, radii: 20))

                }
            }
            .background(color == 0 ? Color.yellow.opacity(0.8) : Color.orange.opacity(0.8))
            .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
            
            HStack {
                Text("Melodi Lamp")
                    .font(.title.bold())
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                        .font(.title3)
                        .padding()
                }
                .background(color == 0 ? Color.yellow : Color.orange)
                .clipShape(Circle())
                

            }
            .padding(.horizontal, 35)
            .padding(.top)
            
            
            Text("The lamp shape provides directional lighting above the dining table and pleasant diffused light throught the room")
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
                .padding(.horizontal, 30)
                .padding(.top, 20)
            
            
            HStack(spacing: 15) {
                // prop 1
                Button {
                    //
                } label: {
                    VStack {
                        Image(systemName: "bell")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                        Text("22 W")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                  
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                
                // prop 2
                Button {
                    //
                } label: {
                    VStack {
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                        Text("1 M")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                  
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                
                //prop 3
                Button {
                    //
                } label: {
                    VStack {
                        Image(systemName: "message")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                        Text("50K")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                  
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                
                //prop 4
                Button {
                    //
                } label: {
                    VStack {
                        Image(systemName: "bell")
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                        
                        Text("22 W")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                  
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)

            }
            .padding(.top, 20)
            Spacer()
            
            HStack {
                Text("$12.99")
                    .foregroundColor(.black)
                    .font(.title.bold())
                    .padding(.leading, 35)
                    .padding(.bottom, 25)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Add to Cart")
                        .foregroundColor(.black)
                        .padding(.vertical, 22)
                        .padding(.horizontal, 35)
                }
                .background(color == 0 ? Color.yellow : Color.orange)
                .clipShape(CustomShape(corner: .topLeft, radii: 55))

            }
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.default,value: color)
    }
}

struct CustomShape: Shape {
    var corner: UIRectCorner
    var radii: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}
/*
class Host : UIHostingController<ContentView> {
    override var prefersHomeIndicatorAutoHidden: Bool {
        
        return true
    }
}
*/
