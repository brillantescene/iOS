////
////  Network.swift
////  GraphQLTest
////
////  Created by ✨EUGENE✨ on 2021/04/04.
////
//
//import Foundation
//import Apollo
//
//class Network {
//    static let shared = Network()
//    
//    private(set) lazy var apollo: ApolloClient = {
//        let httpNetworkTransport = HTTPNetworkTransport(url: URL(string: "https://apollo-fullstack-tutorial.herokuapp.com/")!)
//        
//        httpNetworkTransport.delegate = self
//        return ApolloClient(networkTransport: httpNetworkTransport)
//    }()
//}
//
//extension Network: HTTPNetworkTransportPreflightDelegate {
//    func networkTransport(_ networkTransport: HTTPNetworkTransport,
//                          shouldSend request: URLRequest) -> Bool {
//        return true
//    }
//    
//    func networkTransport(_ networkTransport: HTTPNetworkTransport,
//                          willSend request: inout URLRequest) {
//    }
//}
