//
//  Extensions.swift
//  ToDoList
//
//  Created by Victoria Samsonova on 14.10.24.
//

import Foundation

extension Encodable {
    func asDicktionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
