//
//  SchoolsViewModel.swift
//  TestPhoton
//
//  Created by José González on 2/14/24.
//

import Foundation

class SchoolsViewModel: ObservableObject {
    @Published var schools: [SchoolItem] = []
//    @Published var names: [SchoolItem] = []
//    @Published var schoolResponse: SchoolReponseItems?

    //API Call
    func getSchools() async {
        let urlSession = URLSession(configuration: .default)
        let urlStr: String = "https://data.cityofnewyork.us/resource/s3k6-pzi2.json"
        guard let url = URL(string: urlStr) else {return}
        let urlRequest = URLRequest(url: url)
        do {
            let (data, reponse) = try await urlSession.data(for: urlRequest)
            guard let httpResponse = reponse as? HTTPURLResponse else {
                dump("reponse error")
                return
            }
            //TODO: check reponse codes
            if httpResponse.statusCode == 200 {
                guard let values = await getDecodeData(data: data) else {
                    return
                }
                await MainActor.run {
                    self.schools = values
                }
            }
        } catch {
            dump(error.localizedDescription)
        }
    }
    
    func getDecodeData(data: Data) async -> [SchoolItem]? {
        do {
            let dataDecoded = try JSONDecoder().decode([SchoolItem].self, from: data)
            return dataDecoded
        } catch {
            dump(error.localizedDescription)
            return nil
        }
    }
}
