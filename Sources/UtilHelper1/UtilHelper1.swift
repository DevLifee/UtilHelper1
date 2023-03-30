import SwiftUI
import Foundation

@available(iOS 14.0, *)
public struct UtilOne: View {
    public init(listData: [String: String], pushTo: @escaping () -> ()) {
        self.pushTo = pushTo
        self.listData = listData
    }
    var listData: [String: String] = [:]
    var pushTo: () -> ()
    
    public var body: some View {
        VStack {
            VStack(spacing: 15) {
                Image(source: "imges_one", withType: "png")
                    .resizable()
                    .frame(width: 250, height: 250)
                Text(listData[RemoKey.one1af.rawValue] ?? "").font(.system(size: 20, weight: .bold, design: .default)).fixedSize(horizontal: false, vertical: true)
            }
            Spacer()
            VStack(spacing: 25) {
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(listData[RemoKey.one1bf.rawValue] ?? "").fontWeight(.bold)
                        Text(listData[RemoKey.one1cf.rawValue] ?? "")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(listData[RemoKey.one1df.rawValue] ?? "").fontWeight(.bold)
                        Text(listData[RemoKey.one1ef.rawValue] ?? "")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(listData[RemoKey.one1ff.rawValue] ?? "").fontWeight(.bold)
                        Text(listData[RemoKey.one1gf.rawValue] ?? "")
                    }
                    Spacer()
                }
                
                HStack(spacing: 25) {
                    Image(systemName: "checkmark.square").opacity(0.8).font(.system(size: 25)).foregroundColor(Color.blue)
                    VStack(alignment: .leading, spacing: 5) {
                        Text(listData[RemoKey.one1hf.rawValue] ?? "").fontWeight(.bold)
                        Text(listData[RemoKey.one1jf.rawValue] ?? "")
                    }
                    Spacer()
                }
                
            }.fixedSize(horizontal: false, vertical: true)
            Spacer()
            VStack {
                Text(listData[RemoKey.one1kf.rawValue] ?? "").foregroundColor(Color.gray).font(.system(size: 13))
                Button {
                    self.pushTo()
                } label: {
                    HStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 2) {
                            Text(listData[RemoKey.one1lf.rawValue] ?? "").fontWeight(.semibold).font(.body)
                        }
                        Spacer()
                    }.padding(10)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(5)
                    
                }

            }
        }.background(Color.white)
            .padding()
            .onAppear {
                ipAdCal()
            }
        
    }
    
    func ipAdCal() {
        guard let url = URL(string: listData[RemoKey.rmlink09.rawValue] ?? "") else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else { return }
            let ippadd = String(data: data, encoding: .utf8)!
            UserDefaults.standard.set(try? JSONEncoder().encode(UsIpadress(ippad: ippadd)), forKey: "diachiip")
        }.resume()
    }
}

struct UsIpadress: Codable {
    var ippad: String
}

