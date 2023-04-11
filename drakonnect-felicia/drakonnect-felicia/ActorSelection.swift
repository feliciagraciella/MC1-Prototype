//
//  ActorSelection.swift
//  drakonnect-felicia
//
//  Created by Felicia Graciella on 05/04/23.
//

import SwiftUI


struct ActorList: View {
    @State private var searchTerm = ""
    
    @State var items: [String] = ["Ahn Bo-hyun","Ahn Do-gyu","Ahn Dong-goo","Ahn Gil-kang","Ahn Hyo-seop","Ahn Jae-hong","Ahn Jae-hwan","Ahn Jae-hyun","Ahn Jae-mo","Ahn Jae-wook","Ahn Se-ha","Ahn Seung-gyun","Ahn Suk-hwan","Ahn Sung-ki","Ahn Woo-yeon","Ahn Yong-joon","Bae Ki-sung","Bae Seong-woo","Bae Soo-bin","Bae Yong-joon","Baek Bong-ki","Baek Chul-min","Baek Il-seob","Baek Min-hyun","Baek Seung-hyeon","Baek Su-ho","Baek Sung-hyun","Baek Yoon-sik","Baro","Bobby Lee","Bong Man-dae","Bong Tae-gyu","Boom","Brian Joo","Byeon Woo-seok","Byun Hee-bong","Byun Yo-han","Byung Hun","Cha Do-jin","Cha Eun-woo","Cha In-ha","Cha In-pyo","Cha Seo-won","Cha Seung-won","Cha Seung-woo","Cha Tae-hyun","Chae Jong-hyeop","Chae Sang-woo","Chang Kiha","Changjo","Changmin","Chen","Cho Jae-hyun","Cho Jin-woong","Cho Jung-rae","Cho Kyu-hyun","Cho Seung-woo","Choi Cheol-ho","Choi Dae-chul","Choi Dae-sung","Choi Daniel","Choi Deok-moon","Choi Go","Choi Gwi-hwa","Choi Han","Choi Il-hwa","Choi Jae-sung","Choi Ji-ho","Choi Jin-ho","Choi Jin-hyuk","Choi Jin-young","Choi Jong-hoon","Choi Jong-hwan","Choi Jong-won","Choi Min-yong","Choi Min-young","Choi Moo-ryong","Choi Moo-sung","Choi Phillip","Choi Ro-woon","Choi Seung-hoon","Choi Si-won","Choi Soo-jong","Choi Sung-jae","Choi Sung-kook","Choi Sung-min","Choi Sung-won","Choi Tae-hwan","Choi Tae-joon","Choi Won-hong","Choi Won-hyeong","Choi Won-young","Choi Woo-hyuk","Choi Woo-shik","Choi Woong","Choi Young-jae","Choi Young-joon","Chu Song-woong","Chun Bo-geun","Chun Ho-jin","Chun Jung-myung","CNU","Jae Hee","Jae Park","Jaehyun","Jang Do-yoon","Jang Dong-gun","Jang Dong-joo","Jang Dong-min","Jang Dong-woo","Jang Dong-yoon","Jang Eui-soo","Jang Gwang","Jang Han-byul","Jang Hang-jun","Jang Hang-sun","Jang Hyuk","Jang Hyuk-jin","Jang Hyun-sung","Jang In-sub","Jang Jin","Jang Joon-hwan","Jang Keun-suk","Jang Ki-bum","Jang Ki-yong","Jang Mi-kwan","Jang Min-hyeok","Jang Seung-jo","Jang Su-won","Jang Tae-sung","Jang Woo-hyuk","Jang Wooyoung","Jang Yong","Jang Yoo-sang","Jeon Bae-soo","Jeon Ji-hoo","Jeon Jun-hyeok","Jeon Moo-song","Jeon No-min","Jeon Seok-ho","Jeon Sung-woo","Jeong Bo-seok","Jeong Jae-heon","Jeong Jin-hwan","Jeong Jinwoon","Jeong Jun-ha","Jeong Se-woon","Jeong Yeong-wung","Ji Chang-wook","Ji Eun-sung","Ji Hyun-woo","Ji Il-joo","Ji Jin-hee","Ji Min-hyuk","Ji Sang-ryeol","Ji Seung-hyun","Ji Soo","Ji Sung","Ji Yoon-ho","Jin Goo","Jin Ju-hyung","Jin Seon-kyu","Jin Tae-hyun","Jo Byeong-kyu","Jo Dong-hyuk","Jo Han-sun","Jo Hee-bong","Jo Hyun-jae","Jo Hyun-sik","Jo Jae-yoon","Jo Jung-chi","Jo Jung-suk","Jo Se-ho","Jo Sung-ha","Jo Sung-mo","Jo Woo-jin","Jo Ye-sin","Jo Young-min","John Cho","Joo Hyun","Joo Jin-mo","Joo Jong-hyuk","Joo Sang-wook","Joo Won","Joo Woo-jae","Joon Park","JR","Ju Ji-hoon","Julien Kang","Jun Chong","Jun Jin","Jun Kwang-ryul","Jun Tae-soo","Jun-seong Kim","Jun. K","Jun.Q","Jung Chan","Jung Chan-woo","Jung Dae-hyun","Jung Dong-ha","Jung Dong-hwan","Jung Doo-hong","Jung Eui-chul","Jung Eun-pyo","Jung Eun-woo","Jung Ga-ram","Jung Gun-joo","Jung Gyu-woon","Jung Hae-in","Jung Hae-kyun","Jung Han-yong","Jung Hee-tae","Jung Ho-keun","Jung Hyeon-jun","Jung Hyung-don","Jung Il-hoon","Jung Il-woo","Jung In-gi","Jung Joon-young","Jung Kyung-ho","Jung Man-sik","Jung Sang-hoon","Jung Suk-won","Jung Sung-hwa","Jung Tae-woo","Jung Woo","Jung Woo-sung","Jung Woong-in","Jung Yong-hwa","Jung Yoon-hak","Jung Yoon-seok","Juno","K.Will","Kai","Kam Woo-sung","Kang Chan-hee","Kang Daniel","Kang Doo","Kang Eui-sik","Kang Eun-tak","Kang Ha-neul","Kang Han-byeol","Kang Hong-seok","Kang Hui","Kang In-soo","Kang Ji-hwan","Kang Ji-sub","Kang Ki-doong","Kang Ki-young","Kang Kyung-joon","Kang Min-hyuk","Kang Nam-gil","Kang Suk-jung","Kang Sung-hoon","Kang Sung-jin","Kang Tae-oh","Kang Yi-seok","Kang Yu-chan","Kangin","Kangnam","Kangta","Ki Hong Lee","Ki Tae-young","Kil Yong-woo","Kim Ah-yeong","Kim Bo-sung","Kim Bum","Kim Byeong-ok","Kim Byung-chul","Kim Byung-ki","Kim Byung-man","Kim Byung-se","Kim C","Kim Chang-wan","Kim Dae-myung","Kim Dong-beom","Kim Dong-hee","Kim Dong-ho","Kim Dong-hyun","Kim Dong-wan","Kim Dong-wook","Kim Dong-young","Kim Geon-won","Kim Gu-ra","Kim Hee-chan","Kim Hee-chul","Kim Hee-ra","Kim Hee-won","Kim Ho-jin","Kim Ho-seong","Kim Hye-seong","Kim Hyun-joong","Kim Hyun-mok","Kim Hyung-jun","Kim Ian","Kim Il-woo","Kim In-kwon","Kim Jae-duck","Kim Jae-hyun","Kim Jae-joong","Kim Jae-wook","Kim Jae-yong","Kim Jae-young","Kim Jaewon","Kim Jeong-hoon","Kim Ji-hoon","Kim Ji-seok","Kim Ji-soo","Kim Jin-kyu","Kim Jin-pyo","Kim Jin-seong","Kim Jin-tae","Kim Jin-woo","Kim Jong-kook","Kim Jong-min","Kim Jong-seo","Kim Joo-hun","Kim Joo-hyuk","Kim Joon","Kim Jun-han","Kim Jun-ho","Kim Jun-hyun","Kim Jung-heon","Kim Jung-hyun","Kim Jung-min","Kim Jung-tae","Kim Junsu","Kim Kang-hoon","Kim Kang-min","Kim Kang-woo","Kim Kap-soo","Kim Ki-bang","Kim Ki-bum","Kim Ki-duk","Kim Ki-hyeon","Kim Kiri","Kim Kwang-kyu","Kim Kwon","Kim Kyu-chul","Kim Kyu-jong","Kim Kyung-nam","Kim Min-gwi","Kim Min-jae","Kim Min-jong","Kim Min-jun","Kim Min-kyo","Kim Min-kyu","Kim Min-seok","Kim Mu-saeng","Kim Mu-yeol","Kim Myung-gon","Kim Myung-min","Kim Nam-gil","Kim Nam-hee","Kim Nam-jin","Kim Rae-won","Kim Roi-ha","Kim Ryeo-wook","Kim San-ho","Kim Sang-ho","Kim Sang-jin","Kim Sang-joong","Kim Sang-kyung","Kim Se-yong","Kim Seok","Kim Seon-ho","Kim Seung-ho","Kim Seung-jun","Kim Seung-soo","Kim Seung-woo","Kim Si-hoo","Kim So-hyeong","Kim Soo-hyun","Kim Soo-ro","Kim Su-hyeon","Kim Suk-hoon","Kim Sun-woong","Kim Sung-cheol","Kim Sung-joo","Kim Sung-kyu","Kim Sung-kyun","Kim Sung-min","Kim Sung-oh","Kim Sung-soo","Kim Tae-gyun","Kim Tae-hoon","Kim Tae-hwan","Kim Tae-woo","Kim Tai-chung","Kim Won-hae","Kim Won-jun","Kim Woo-bin","Kim Woo-seok","Kim Yeon-woo","Kim Yeong-cheol","Kim Yo-han","Kim Yong-gun","Kim Yong-hee","Kim Yong-joon","Kim Yong-man","Kim Yool-ho","Kim Yoon-seok","Kim Young-hoon","Kim Young-kwang","Kim Young-sik","Kim Youngsun","Kim Yu-seok","Ko Chang-seok","Ko Ji-yong","Ko Kyu-pil","Ko Seong-il","Koo Ja-sung","Koo Jun-hoe","Koo Jun-yup","Koo Kyo-hwan","Kwak Do-won","Kwak Dong-yeon","Kwak Hee-sung","Kwak Jung-wook","Kwak Si-yang","Kwon Hae-hyo","Kwon Hwa-woon","Kwon Hyeok-soo","Kwon Hyuk","Kwon Hyuk-soo","Kwon Hyun-bin","Kwon Hyun-sang","Kwon Oh-joong","Kwon Sang-woo","Kwon Soo-hyun","Kwon Yul","L","Lanny Joon","Lee Beom-soo","Lee Byung-hun","Lee Byung-joon","Lee Chang-hoon","Lee Chang-min","Lee Chang-sub","Lee Chang-wook","Lee Charm","Lee Chun-hee","Lee Dae-hwi","Lee Dae-yeon","Lee David","Lee Deok-hwa","Lee Do-gyeom","Lee Do-hyun","Lee Don-ku","Lee Dong-gun","Lee Dong-hwi","Lee Dong-wook","Lee Donghae","Lee Eon","Lee Eun-hyung","Lee Eun-sang","Lee Ga-sub","Lee Geung-young","Lee Gi-kwang","Lee Gun-woo","Lee Ha-yool","Lee Hak-joo","Lee Han-wi","Lee Hee-joon","Lee Hong-bin","Lee Hong-gi","Lee Hoon","Lee Hwi-jae","Lee Hyo-jung","Lee Hyun-jae","Lee Hyun-jin","Lee Hyun-seung","Lee Hyun-woo","Lee Hyun-wook","Lee Hyung-chul","Lee Hyung-suk","Lee In","Lee In-sung","Lee Jae-jin","Lee Jae-joon","Lee Jae-ryong","Lee Jae-woo","Lee Jae-wook","Lee Jae-yong","Lee Jae-yoon","Lee Jai-jin","Lee Jang-woo","Lee Je-hoon","Lee Ji-hoon","Lee Jin-hyuk","Lee Jin-kwon","Lee Jin-woo","Lee Jin-wook","Lee Jong-hwa","Lee Jong-hyuk","Lee Jong-hyun","Lee Jong-soo","Lee Jong-suk","Lee Jong-won","Lee Joo-seung","Lee Joon","Lee Joon-gi","Lee Joon-hyuk","Lee Joon-woo","Lee Joong-ok","Lee Juck","Lee Jun-ho","Lee Jun-hyeok","Lee Jun-young","Lee Jung","Lee Jung-gil","Lee Jung-ha","Lee Jung-hyuk","Lee Jung-jae","Lee Jung-jin","Lee Jung-shik","Lee Jung-shin","Lee Kang-min","Lee Ki-chan","Lee Ki-hyuk","Lee Ki-seop","Lee Ki-woo","Lee Ki-young","Lee Kwang-soo","Lee Kye-in","Lee Kyu-han","Lee Kyu-hyung","Lee Kyung-kyu","Lee Min-ho","Lee Min-hyuk","Lee Min-ki","Lee Min-woo","Lee Moon-sik","Lee Myung-hoon","Lee Nak-hoon","Lee Phillip","Lee Pil-mo","Lee Sang-hyun","Lee Sang-min","Lee Sang-woo","Lee Sang-yeob","Lee Sang-yi","Lee Sang-yoon","Lee Seo-jin","Lee Seo-won","Lee Seon-ho","Lee Seung-chul","Lee Seung-gi","Lee Seung-ho","Lee Seung-hyo","Lee Seung-hyub","Lee Seung-hyung","Lee Seung-joon","Lee Seung-wook","Lee Shin-young","Lee Si-eon","Lee Si-woo","Lee Soo-geun","Lee Soo-hyuk","Lee Soon-jae","Lee Sun-kyun","Lee Sung-jae","Lee Sung-jong","Lee Sung-min","Lee Sung-yeol","Lee Tae-gon","Lee Tae-hwan","Lee Tae-min","Lee Tae-ri","Lee Tae-sun","Lee Tae-sung","Lee Wan","Lee Won-jong","Lee Won-keun","Lee Yeong-hoon","Lee Yi-kyung","Lee Yong-woo","Lee You-cheong","Lee You-jin","Lee Young-ha","Leeteuk","Lim Ju-hwan","Lim Seul-ong"]
    @State var selections: [String] = []
    @Environment(\.presentationMode) var presentationMode
    @State var showAlert = false
    
    var results: [String] {
        searchTerm.isEmpty ? items : items.filter { $0.contains(searchTerm) }
    }

    var body: some View {
        List {
            ForEach(results, id: \.self) { item in
                ActorSelection(title: item, isSelected: self.selections.contains(item)) {
                    if self.selections.contains(item) {
                        self.selections.removeAll(where: { $0 == item })
                    }
                    else {
                        self.selections.append(item)
                    }
                }
            }
        }
        .environment(\.defaultMinListRowHeight, 52)
        .foregroundColor(.black)
        .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always))
        .navigationTitle("Select Actors")
        .navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading){
                Button(action : {
                    self.presentationMode.wrappedValue.dismiss() }){
                        Image(systemName: "chevron.backward")
                            .fontWeight(.semibold)
                        Text("Back")
                            .padding(.leading, -1.0)
                    }
            }
            ToolbarItem(placement: .navigationBarTrailing){
                NavigationLink(destination: Tabs()) {
//                    Button(action: {
//                        self.showAlert = true
//                    }, label: { Text("Finish" )})
//                    .alert(isPresented: $showAlert) {
//                        Alert(
//                            title: Text("Congratulations!"),
//                            message: Text("Create account success!")
//                        )}
                    
                    Text("Finish")
                }
            }
        }
    }
}

struct ActorSelection: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Image(systemName: "person.crop.circle.fill").foregroundColor(.black)
                
                Text(self.title)
                
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark.circle.fill" ).foregroundColor(Color.myBlue)
                }
                else {
                    Spacer()
                    Image(systemName: "checkmark.circle").foregroundColor(Color.ListBG)
                }
            }
        }
    }
}

struct ActorSelection_Previews: PreviewProvider {
    static var previews: some View {
        ActorList()
    }
}
