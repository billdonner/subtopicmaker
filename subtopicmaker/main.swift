//
//  main.swift
//  subtopicmaker
//
//  Created by bill donner on 1/23/24.
//

import Foundation
import q20kshare

  /**you are a macOS system and swift programmer
   
   please cluster this list of topics and counts into a smaller list of topics based on reasonable similarity, throw away the counts

   please output the revised list  as a json dictionary*/

/**
 1920S_Music   2
 1960S_Tv_Catchphrases   1
 Arabic_Artists_Of_1700S   10
 Arabic_Artists_Of_1800S   10
 Best_Lines_From_Hulu_Series   2
 Best_Lines_From_Tv_2010S   2
 Best_Lines_From_Tv_In_The_1950S   2
 Best_Lines_From_Tv_Shows_-_1980S   1
 Best_Lines_From_Tv_Shows_In_The_2010S   3
 Best_Tv_1970S_Lines   4
 Best_Tv_Lines   1
 Best_Tv_Lines_1990S   1
 Best_Tv_Lines_2000S   3
 Best_Tv_Quotes_1940S   4
 Best_Tv_Quotes_2000S   2
 Best_Tv_Shows_Of_The_1940S   3
 Best_Tv_Shows_Of_The_1960S   1
 Bread   10
 Chicken_Dishes   10
 Chinese_Artists_Of_1700S   10
 Chinese_Artists_Of_1800S   3
 Classic_Tv_Quotes_Of_The_1960S   1
 Comedians_Of_The_1930S   4
 Comedians_Of_The_1940S   10
 Comedians_Of_The_1950S   8
 Comedians_Of_The_1960S   8
 Comedians_Of_The_1970S   7
 Comedians_Of_The_1980S   5
 Comedians_Of_The_1990S   10
 Comedians_Of_The_2000S   5
 Comedians_Of_The_2010S   10
 Dutch_Artists_Of_1700S   10
 Dutch_Artists_Of_1800S   5
 Fish_Dishes   8
 French_Artists_Of_1700S   10
 French_Artists_Of_1800S   10
 Funniest_Lines_From_Tv_1950S   1
 Funniest_Tv_Lines_From_The_1950S   5
 German_Artists_Of_1800S   3
 Hors_D'oeuvres   10
 Hulu_Series_Quotes   2
 Indian_Artists_Of_1700S   6
 Indian_Artists_Of_1800S   7
 Italian_Artists_1700S   9
 Italian_Artists_Of_The_1400S   10
 Italian_Artists_Of_The_1700S   3
 Japanese_Artists_Of_1700S   4
 Japanese_Artists_Of_1800S   3
 Lamb_Dishes   10
 Major_Events_Of_The_1800S   10
 Major_Events_Of_The_1810S   17
 Major_Events_Of_The_1820S   10
 Major_Events_Of_The_1830S   5
 Major_Events_Of_The_1840S   10
 Major_Events_Of_The_1850S   10
 Major_Events_Of_The_1860S   4
 Major_Events_Of_The_1870S   10
 Major_Events_Of_The_1880S   7
 Major_Events_Of_The_1890S   10
 Major_Events_Of_The_1900S   10
 Major_Events_Of_The_1910S   10
 Major_Events_Of_The_1920S   10
 Major_Events_Of_The_1930S   10
 Major_Events_Of_The_1940S   10
 Major_Events_Of_The_1950S   10
 Major_Events_Of_The_1960S   10
 Major_Events_Of_The_1970S   10
 Major_Events_Of_The_1980S   10
 Major_Events_Of_The_1990S   10
 Mexican_Artists_Of_1700S   8
 Mexican_Artists_Of_1800S   6
 Movies   6
 Movies1910S   6
 Movies_1920S   6
 Movies_1960S   4
 Movies_1970S   6
 Movies_1980S   6
 Movies_1990S   5
 Movies_2000S   2
 Movies_In_The_1950S   5
 Movies_Of_The_1980S   1
 Movies_Of_The_2010S   6
 Music   5
 Music_1910S   5
 Music_1930S   3
 Music_1950S   3
 Music_1960S   4
 Music_1990S   6
 Music_2000S   5
 Music_2010S   6
 Music_In_The_1940S   6
 Music_Of_The_1920S   3
 Music_Of_The_1970S   6
 Music_Of_The_1980S   6
 Netflix_Series   3
 Salads   6
 Shellfish_Dishes   10
 South_American_Artists_Of_The_1700S   10
 South_American_Artists_Of_The_1800S   10
 Spanish_Artists_Of_1700S   6
 Spanish_Artists_Of_1800S   6
 Spanish_Artists_Of_The_1700S   10
 Steak_Dishes   10
 Tv_1970S   2
 Tv_1990S   2
 Tv_Shows_1960S   2
 Tv_Theme_Songs_Of_The_1960S   1
 Veal_Dishes   10
 Vegetable_Dishes   10
 */


let topsubs = """
{
  "Music_Periods": [
    "1920S_Music",
    "Music_1910S",
    "Music_1930S",
    "Music_1950S",
    "Music_1960S",
    "Music_1990S",
    "Music_2000S",
    "Music_2010S",
    "Music_In_The_1940S",
    "Music_Of_The_1920S",
    "Music_Of_The_1970S",
    "Music_Of_The_1980S"
  ],
  "Tv_Quotes_And_Shows": [
    "1960S_Tv_Catchphrases",
    "Best_Lines_From_Hulu_Series",
    "Best_Lines_From_Tv_2010S",
    "Best_Lines_From_Tv_In_The_1950S",
    "Best_Lines_From_Tv_Shows_-_1980S",
    "Best_Lines_From_Tv_Shows_In_The_2010S",
    "Best_Tv_1970S_Lines",
    "Best_Tv_Lines",
    "Best_Tv_Lines_1990S",
    "Best_Tv_Lines_2000S",
    "Best_Tv_Quotes_1940S",
    "Best_Tv_Quotes_2000S",
    "Best_Tv_Shows_Of_The_1940S",
    "Best_Tv_Shows_Of_The_1960S",
    "Classic_Tv_Quotes_Of_The_1960S",
    "Funniest_Lines_From_Tv_1950S",
    "Funniest_Tv_Lines_From_The_1950S",
    "Hulu_Series_Quotes",
    "Tv_1970S",
    "Tv_1990S",
    "Tv_Shows_1960S",
    "Tv_Theme_Songs_Of_The_1960S"
  ],
  "Artists_By_Nationality_And_Period": [
    "Arabic_Artists_Of_1700S",
    "Arabic_Artists_Of_1800S",
    "Chinese_Artists_Of_1700S",
    "Chinese_Artists_Of_1800S",
    "Dutch_Artists_Of_1700S",
    "Dutch_Artists_Of_1800S",
    "French_Artists_Of_1700S",
    "French_Artists_Of_1800S",
    "German_Artists_Of_1800S",
    "Indian_Artists_Of_1700S",
    "Indian_Artists_Of_1800S",
    "Italian_Artists_1700S",
    "Italian_Artists_Of_The_1400S",
    "Italian_Artists_Of_The_1700S",
    "Japanese_Artists_Of_1700S",
    "Japanese_Artists_Of_1800S",
    "Mexican_Artists_Of_1700S",
    "Mexican_Artists_Of_1800S",
    "South_American_Artists_Of_The_1700S",
    "South_American_Artists_Of_The_1800S",
    "Spanish_Artists_Of_1700S",
    "Spanish_Artists_Of_1800S",
    "Spanish_Artists_Of_The_1700S"
  ],
  "Historical_Events_By_Decade": [
    "Major_Events_Of_The_1800S",
    "Major_Events_Of_The_1810S",
    "Major_Events_Of_The_1820S",
    "Major_Events_Of_The_1830S",
    "Major_Events_Of_The_1840S",
    "Major_Events_Of_The_1850S",
    "Major_Events_Of_The_1860S",
    "Major_Events_Of_The_1870S",
    "Major_Events_Of_The_1880S",
    "Major_Events_Of_The_1890S",
    "Major_Events_Of_The_1900S",
    "Major_Events_Of_The_1910S",
    "Major_Events_Of_The_1920S",
    "Major_Events_Of_The_1930S",
    "Major_Events_Of_The_1940S",
    "Major_Events_Of_The_1950S",
    "Major_Events_Of_The_1960S",
    "Major_Events_Of_The_1970S",
    "Major_Events_Of_The_1980S",
    "Major_Events_Of_The_1990S"
  ],
  "Comedians_By_Decade": [
    "Comedians_Of_The_1930S",
    "Comedians_Of_The_1940S",
    "Comedians_Of_The_1950S",
    "Comedians_Of_The_1960S",
    "Comedians_Of_The_1970S",
    "Comedians_Of_The_1980S",
    "Comedians_Of_The_1990S",
    "Comedians_Of_The_2000S",
    "Comedians_Of_The_2010S"
  ],
  "Movies_By_Decade": [
    "Movies",
    "Movies1910S",
    "Movies_1920S",
    "Movies_1960S",
    "Movies_1970S",
    "Movies_1980S",
    "Movies_1990S",
    "Movies_2000S",
    "Movies_In_The_1950S",
    "Movies_Of_The_1980S",
    "Movies_Of_The_2010S"
  ],
  "Movie_And_Tv_Series_Providers": [
    "Netflix_Series"
  ],
  "Food_Dishes": [
    "Bread",
    "Chicken_Dishes",
    "Fish_Dishes",
    "Hors_D'oeuvres",
    "Lamb_Dishes",
    "Salads",
    "Shellfish_Dishes",
    "Steak_Dishes",
    "Veal_Dishes",
    "Vegetable_Dishes"
  ]
}
"""

struct Mapping : Codable  {
  let key:String
  let subtopics: [String]
}

let xyz = try JSONDecoder().decode([String:[String]].self,from:topsubs.data(using:.utf8)!)

let header = """
{
    "description": "Topic Info Database",
    "version": "1.0.2",
    "author": "Bill Donner",
    "date": "jan  2024",
    "topics": [
"""

let trailer = """
    ]
}
"""


print (header)
var first = true

for (index,y) in xyz.enumerated() {
  let topic = y.key
  let subtopics = y.value
  if !first { print (",")} else { first = false }
 
  let item = """
  {
    "name":"\(topic)",
    "subject":"\(topic)",
    "pic":"brain.head.profile",
    "notes":"tbd",
    "subtopics":\(subtopics)
  }
"""
  
  print (item)
}

print (trailer)


