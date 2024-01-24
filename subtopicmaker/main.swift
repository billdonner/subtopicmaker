//
//  main.swift
//  subtopicmaker
//
//  Created by bill donner on 1/23/24.
//

import Foundation
import ArgumentParser
import q20kshare

  /**you are a macOS system and swift programmer
   
   please cluster this list of topics and counts into a smaller list of topics based on reasonable similarity, throw away the counts

   please output the revised list  as a json dictionary*/


let version = "0.1.0"

struct Mapping : Codable  {
  let key:String
  let subtopics: [String]
}

struct SubtopicMaker: ParsableCommand {
  
  static let configuration = CommandConfiguration(
    abstract: "SubtopicMaker - utility to build topic-info.json",
    version: version,
    subcommands: [],
    defaultSubcommand: nil,
    helpNames: [.long, .short]
  )
  var obuf:String = ""
  
  mutating func emit(_ s:String) {
    if output != "" {
      obuf += s + "\n"
    } else {
      print(s)
    }
  }

  
  @Argument(help: "Path to Input File")
  var input: String
  @Option(help:"Path to Output File")
  var output: String=""
  
  
  mutating func run() throws {
  
    let contents = try String(contentsOf: URL(fileURLWithPath: input))
    print(">SubtopicMaker read \(contents.count) from \(input)")
    let xyz = try JSONDecoder().decode([String:[String]].self,from:contents.data(using:.utf8)!)
    let header = """
{
    "description": "Topic Info Database",
    "version": "\(version)",
    "author": "SubtopicMaker",
    "date": "\(Date())",
    "topics": [
"""
    let trailer = """
    ]
}
"""
    emit (header)
    
    var first = true
    for (_,y) in xyz.enumerated() {
      let topic = y.key
      let subtopics = y.value
      if !first { emit (",")} else { first = false }
      
      let item = """
  {
    "name":"\(topic)",
    "subject":"\(topic)",
    "pic":"brain.head.profile",
    "notes":"tbd",
    "subtopics":\(subtopics)
  }
"""
      emit (item)
    }
    emit (trailer)
    if obuf.count > 0 {
      try obuf.write(to:URL(fileURLWithPath: output),atomically:false,encoding: .utf8)
      print(">SubtopicMaker wrote \(obuf.count) bytes to \(output)")
    }
  }
}


SubtopicMaker.main()
