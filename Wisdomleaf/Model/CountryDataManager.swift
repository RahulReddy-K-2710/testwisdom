//
//  CountryDataManager.swift
//  Wisdomleaf
//
//  Created by Rahul on 19/04/23.
//

import Foundation

//MARK: CountryData.
struct CountryDataManager {
    static func getCountryData() -> [CountryModel] {
        let country1 = CountryModel(title: "Austria",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/4/41/Flag_of_Austria.svg",
                                    description: "Austria, largely mountainous landlocked country of south-central Europe. Together with Switzerland, it forms what has been characterized as the neutral core of Europe,")
        let country2 = CountryModel(title: "Albania",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/3/36/Flag_of_Albania.svg",
                                    description: "During classical antiquity, Albania was home to several Illyrian tribes such as the Ardiaei, Albanoi, Amantini, Enchele, Taulantii and many others, but also Thracian and Greek tribes, as well as several Greek colonies established on the Illyrian coast. In the 3rd century BC, the area was annexed by Rome and became part of the Roman provinces of Dalmatia, Macedonia and Moesia Superior.")
        let country3 = CountryModel(title: "Algeria",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/7/77/Flag_of_Algeria.svg",
                                    description: "Algeria is a country at the Mediterranean coast in northern Africa. The land has a total area of 2,381,740 km² (919,594 mi²) and a total coastline of 998 km (620.1 mi). This land area is approximately 342% of the area of Texas. Algeria is thus the largest country in Africa and the tenth largest country in the world. A considerable share of the inhabitants (74%) belongs to the urban population. ")
        let country4 = CountryModel(title: "Andorra",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/1/19/Flag_of_Andorra.svg",
                                    description: "Andorra is a landlocked country in the eastern Pyrenees. The dwarf state has a total area of only 470 km² (181 mi²). This land area is about 2.7 times the size of Washington, D.C. Andorra is thus one of the smallest countries in Europe by area and ranked 199th worldwide. ")
        let country5 = CountryModel(title: "Angola",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Flag_of_Angola.svg",
                                    description: "Angola is a country at the west coast of central Africa, about 700 km south of the equator. The land has a total area of 1,246,700 km² (481,353 mi²) and a total coastline of 1,600 km (994.2 mi). This land area is approximately 179% of the area of Texas. Angola is thus one of the largest countries in Africa and the 23rd biggest in the world. More than half of all residents (67%) live within cities.")
        let country6 = CountryModel(title: "Anguilla",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Flag_of_Anguilla.svg",
                                    description: "Anguilla is an island state in the eastern Caribbean. The dwarf state has a total area of only 96 km² (37 mi²) and a total coastline of 61 km (37.9 mi). This land area is about 2.9 times the size of Manhattan. Anguilla is thus one of the smallest countries in the Americas by area and ranked 228th worldwide.")
        let country7 = CountryModel(title: "Antigua and Barbuda",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/8/89/Flag_of_Antigua_and_Barbuda.svg",
                                    description: "Antigua and Barbuda are an island state in the caribbean sea. The dwarf state has a total area of only 440 km² (170 mi²) and a total coastline of 153 km (95.1 mi). This land area is about 2.5 times the size of Washington, D.C. Antigua and Barbuda are thus one of the smallest countries in the Americas by area and ranked 204th worldwide.")
        let country8 = CountryModel(title: "Argentina",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/1/1a/Flag_of_Argentina.svg",
                                    description: "Argentina is a country in the southern half of South America on the Atlantic Ocean. The land has a total area of 2,780,400 km² (one million mi²) and a total coastline of 4,989 km (3,100.0 mi). This land area is approximately 400% of the area of Texas. Argentina is thus one of the largest countries in the Americas and the eighth biggest in the world. An exceptionally high proportion of residents (92%) belongs to the urban population. ")
        let country9 = CountryModel(title: "Armenia",
                                    image: "https://upload.wikimedia.org/wikipedia/commons/2/2f/Flag_of_Armenia.svg",
                                    description: "Armenia is a landlocked country in the Eurasian Caucasus. The land has a total area of 29,740 km² (11,483 mi²). This land area is approximately 118% of the area of Maryland. Armenia is thus one of the smallest countries in Asia by area and ranked 143rd worldwide. More than half of all residents (63%) live within cities. More than every third inhabitant lives in Yerevan.")
        let country10 = CountryModel(title: "Aruba",
                                     image: "https://upload.wikimedia.org/wikipedia/commons/f/f6/Flag_of_Aruba.svg",
                                     description: "Aruba is an island state of the Lesser Antilles in the South Caribbean and is located about 27 km north of Venezuela. The dwarf state has a total area of only 179 km² (69 mi²) and a total coastline of 69 km (42.9 mi). This land area is about 1.0 times the size of Washington, D.C. Aruba is thus one of the smallest countries in the Americas by area and ranked 221st worldwide. With 595 inhabitants per km")
        let country11 = CountryModel(title: "Australia",
                                     image: "https://upload.wikimedia.org/wikipedia/commons/8/88/Flag_of_Australia_%28converted%29.svg",
                                     description: "The Data Availability and Transparency Act 2022 establishes a new, best practice scheme for sharing Australian Government data, underpinned by strong safeguards and consistent, efficient processes - the DATA Scheme.")
        
        let countries = [country1, country2, country3, country4, country5, country6, country7, country8, country9, country10, country11, ]
        
        return countries
    }
    
}
