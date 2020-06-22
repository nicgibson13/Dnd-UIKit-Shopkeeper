//
//  NPCStuff.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 6/15/20.
//  Copyright © 2020 Nic Gibson. All rights reserved.
//

import Foundation

class Characteristics {
    
    static let sharedInstance = Characteristics()
    
    var mannerisms = [
    "Uses a falling inflection",
    "Ends sentences with question marks",
    "Speaks in a whisper",
    "Always talks over others",
    "Tendency to mumble",
    "Slurs words, even when sober",
    "Has a sing-song speech pattern",
    "Shortness of breath from talking too fast",
    "Unnecessary or e aggerated throat clearing",
    "Deep breaths between every sentence",
    "Constantly swallowing when nervous",
    "Heavy reliance on buffer words: “Like,” “Um,” “Uh,” “Totally,” “Basically,” “You know”"
    ]
    
    var races = [
    "Human",
    "Dragonborn",
    "Dwarf",
    "Elf",
    "Aasimar",
    "Gnome",
    "Halfling",
    "Tiefling",
    "Genasi",
    "Goliath"
    ]
    
    var gender = [
    "male",
    "female"
    ]
    
    var hairColor = [
    "Black",
    "Grey",
    "Platinum",
    "White",
    "Dark Blonde",
    "Blonde",
    "Bleach Blonde",
    "Dark Redhead",
    "Redhead",
    "Light Redhead",
    "Brunette",
    "Auburn"
    ]
    
    var eyeColor = [
    "Amber",
    "Brown",
    "Hazel",
    "Green",
    "Blue",
    "Grey",
    "Pale Brown",
    "Pale Green",
    "Pale Blue",
    "Pale Grey"
    ]
}

class Names {
    
    static let sharedInstance = Names()
    
    var maleDragonborn =
        [
            "Gorarash Aphuushtaak",
            "Rhofras Cincandorgoc",
            "Hibor Prirjendullur",
            "Iorkris Luumbecnuulen",
            "Kilqrin Crerdoner",
            "Udobarum Dorjendrolled",
            "Medqrin Kriltukmuc",
            "Rhorinn Calkish",
            "Herakas Leammek",
            "Brenrakas Taldil",
            "Vorfarn Myolrateth",
            "Sulciar Nelketergol",
            "Zrarinn Yommisillal",
            "Udoseth Thestuud",
            "Sullin Nyestuujendod",
            "Helasar Cruldran",
            "Kilnaar Kre ec",
            "Orlasashi Almash",
            "Draseth Clethtic",
            "Pribarum Tachethaal"
    ]
    
    var femaleDragonborn =
        [
            "Orivys Yuancal",
            "Tharann Ophiashkmanuur",
            "Hindrish Amtus",
            "Drysqorel Lialthuu imur",
            "Ophivys Yalmur",
            "Cagissa Shithtin",
            "Thercoria Geambecmolan",
            "Jesbis Tencuush",
            "Zofcys Thaltinuared",
            "Thagissa Tha enad",
            "Phibith Umtondruandith",
            "Kabith Estec",
            "Belkira Klaaltath",
            "Gur ora Klurthucnes",
            "Phibis Myirnuakmal",
            "Rashirina Dalmicnis",
            "Oshann Yernekean",
            "Phibis Thelkiakuun",
            "Alyassa Crirthinergith",
            "Neskaryn Arokmaac"
    ]
    
    var maleDwarf =
        [
            "Kargrom",
            "Gremnir",
            "Rotbrek",
            "Thaldek",
            "Hargron",
            "Galnik",
            "Ummur",
            "Amnom",
            "Grilgurn",
            "Galmin",
            "Kharmir",
            "Grydrus",
            "Gimrus",
            "Thuliggs",
            "Thorrim",
            "Adnus",
            "Kargram",
            "Grythrun",
            "Gulgron",
            "Thyduhr"
    ]
    
    var femaleDwarf =
        [
            "Lessnis",
            "Gwenwyn",
            "Nisras",
            "Maevnyss",
            "Gwynrielle",
            "Ranla",
            "Lesvan",
            "Anmera",
            "Jenthel",
            "Myrleil",
            "Lasssael",
            "Naltyn",
            "Missyl",
            "Nesmera",
            "Lassdille",
            "Tiztyn",
            "Sarniss",
            "Tazria",
            "Nislin",
            "Brylwaen"
    ]
    
    var maleElf =
        [
            "Saevel  ilkalyn",
            "Eltaor Iargwyn",
            "Ehrendil Petlana",
            "Haladavar Leobalar",
            "Anlyth Morgwyn",
            "Ehrendil Paydark",
            "Folas Zinhorn",
            "Lamruil Caihorn",
            "Ornthalas Venven",
            "Elnaril Yindan",
            "Zelphar Wynyra",
            "Elnaril Mirastina",
            "Varitan Ro idor",
            "Cornaith Keadove",
            "Yhendorn Grezorwyn",
            "Darthoridan Wynfina",
            "Wyn Valamin",
            "Delsaran Petzumin",
            "Hagen Iarfir",
            "Tamnaeth Venroris"
    ]
    
    var femaleElf =
        [
            "Alais Olafir",
            "Caeda Holaleth",
            "Neia Morna",
            "Wynather Enwenys",
            "Haramara Grevaris",
            "Nuala Balphyra",
            "Bonaluria Inamaer",
            "Edraele Morven",
            "Zestari Valzana",
            "Ryllae Perzeiros",
            "Shalia Arawarin",
            "Chasianna Inakas",
            "Thaola Elamaer",
            "Aerith Kelcan",
            "Elasha Sha idor",
            "Eliyen Ilicaryn",
            "Artin Yeltris",
            "Amedee Balbanise",
            "Naevys Waesgolor",
            "Sana Aracyne"
    ]
    
    var maleGnome =
        [
            "Snypross",
            "Frambast",
            "Rensmest",
            "Balbart",
            "Malveeg",
            "Fromtevom",
            "Nompukust",
            "Manoprac",
            "Klamenjack",
            "Camonsbam",
            "Judbeg",
            "Frippeet",
            "Diddig",
            "Wainjart",
            "Clemjeg",
            "Gnankkuriss",
            "Nallbekac",
            "Cleebilbog",
            "Scebonsnast",
            "Lefeddym"
    ]
    
    var femaleGnome =
        [
            "Cobbnuss",
            "Thallman",
            "Tomber",
            "Shumwap",
            "Nelbes",
            "Makmilait",
            "Fiednudop",
            "Wediellbell",
            "Mivaddwai",
            "Flyheblep",
            "Florwi",
            "Shablo",
            "Tamwut",
            "Gliddlut",
            "Smapros",
            "Aalviewath",
            "Wulkiwe",
            "Smofeglell",
            "Afonsnen",
            "Habidwyll"
    ]
    
    var maleHalfling =
        [
            "Linumo",
            "Horemin",
            "Valhorn",
            "Uribul",
            "Idonan",
            "Sanamin",
            "Korster",
            "Belnan",
            "Eleon",
            "Marpher",
            "Idoos",
            "Tarner",
            "Permin",
            "Yarumo",
            "Erpher",
            "Nelos",
            " okas",
            "Perbin",
            " oyas",
            "Janbul"
    ]
    
    var femaleHalfling =
        [
            "Malphina",
            "Chencaryn",
            "Nedsira",
            "Fenda",
            " isica",
            "Froyra",
            "Brerana",
            "Thamzana",
            "Jayzira",
            "Isarana",
            "Eoora",
            "Neda",
            "Sylri",
            "Arieni",
            "Gellile",
            "Calgrace",
            "Wilile",
            "Hildrey",
            "Malora",
            "Qikis"
    ]
    
    var maleHuman =
        [
            "Jarin Meimar",
            "Bhuhlar Shuda",
            "Grinvorn Sternthorne",
            "Brikran Flatrunner",
            "Habol Vin",
            "Nof Stakudz",
            "Frolven Morningblood",
            "Reth Peacesong",
            "Thaojioche Zilokdak",
            "Lahveoth Dakruem",
            "Kemouram Higomilba",
            "Brosver Onzido",
            "Cheng Da",
            "Fan Tuan",
            "Harforcur Vurnasa",
            "Debris Isusqa",
            "Burdud Dhalun",
            "Zehmeid Rummam",
            "Vuldolm Crestshard",
            "Stue Deadbash",
            "Pogin Roz",
            "Af Nivursk",
            "Blerben Flintforce",
            "Ur Bladestride",
            "Som-Venuf Bokdiltrid",
            "De-Tek Sinkrehk",
            "Margaldij Vrevonadzya",
            "Fomot Travyante",
            "Wung Due",
            "Hem Ma",
            "Zastalon Alestu",
            "Tuelbiel Covomon"
    ]
    
    var femaleHuman =
        [
            "Fosnihlil Jomer",
            "Shohneh Bessim",
            "Talsisre Laughingshade",
            "Assell Stagtaker",
            "Zotha Bon",
            "Zo Shoziv",
            "Carerhoy Keenvalor",
            "Roley Masterhide",
            "Chumama Felrelold",
            "Fuse Vucrehd",
            "Shalmuchath Uvzimetvu",
            "Shafi Trokomrya",
            "Cue Chiam",
            "Tia Siem",
            "Fin Ondusel",
            "Balms Dudrosqi",
            "Ruruhlil Khoneid",
            "Minal Khodu",
            "Jisrelsa Woodenrunner",
            "Lorvin Shadowgrain",
            "Kermo Grun",
            "Re Nokorsk",
            "Iflasha Summergrip",
            "Somo Hardfeather",
            "Humezra Secrathom",
            "Sephi Dandrim",
            "Udhuve Stengyergyedzo",
            "Rachesh Grekyedu",
            "Zai Keing",
            " ue Chiao",
            "Bindrq Megirgo",
            "Filmv Ezunu"
    ]
    
    var maleTiefling =
        [
            "Kililius",
            "Morrakir",
            "Aetnon",
            "Ur ikas",
            "Dammeros",
            "Kai ius",
            "Kilmong",
            "Life",
            "E pert",
            "Hero",
            "Merias",
            "Rolichar",
            "Gar ire",
            "Gu ire",
            "Ka ire",
            "Ozmarir",
            "Maleron",
            "Unlocked",
            "Flawed",
            "Trouble"
    ]
    
    var femaleTiefling =
        [
            "Sacyra",
            "Kal ibis",
            "Frivari",
            "Yanirith",
            "Yoranarei",
            "Aricyra",
            "Hisloth",
            "Pure",
            "Euphoria",
            "E citing",
            "Nelaia",
            "Leyola",
            "Valfirith",
            "Manirith",
            "Arialies",
            "Zalies",
            "Saryola",
            "Trust",
            "Awe",
            "Suffering"
    ]
    
    var maleGenasi =
        [
            "Ablaze",
            "Grill",
            "Pyro",
            "Geyser",
            "Run",
            "Azure",
            "Hill",
            "Zircon",
            "Geo",
            "Gale",
            "Fan",
            "Rise"
    ]
    
    var femaleGenasi =
        [
            "Burn",
            "Blaze",
            "Wildfire",
            "Tributary",
            "Rinse",
            "Seiche",
            "Pebble",
            "Geode",
            "Crystal",
            "Whiff",
            "Tornado",
            "Current"
    ]
    
    var maleGoliath =
        [
            "Vonihl Wildtwister Athunigane",
            "Kavapath Lonedrifter Vaimei-Lukena",
            "Eggan Foodhunter Nugaliaga",
            "Vauravith Rootwanderer Kolakalathi",
            "Thavathak Wildwanderer Kolakatake",
            "Ghathok Hidewarrior Kulumelo",
            "Thathok Frightworker Muthalavi",
            "Ghagal Hornaid Malukatake",
            "Taudhan Stormshot Vathunugoni",
            "Khunihl Adeptshot Kulumigone",
            "Kavamahg Slysmasher Nola-Kukena",
            "Keorath Rootwarrior Vathunigone",
            "Mathag Hidebearer Gathakigone",
            "Mearhan Steadyfinder Malukanathi",
            "Eaggan Beareye Malukathala",
            "Lazanath Frightstalker Nulakigane",
            "Neoriak Swiftworker Ogoligo",
            "Kanavek Goataid Nugalutha",
            "Keozak Rootlander Agu-Ulamino",
            "Lorophak Loneweaver Ganu-Miano"
    ]
    
    var femaleGoliath =
        [
            "Kaunna Keenworker Inulanathi",
            "Orithu Trueguard Vaimei-Lakanu",
            "Gaunu Slyfist Ovethakanu",
            "Zaannio Flowerhauler Geanakane",
            "Norea Daywalker Munakaga",
            "Mekeo Goatheart Athuniala",
            "Gelo Brightspeaker Egumigo",
            "Lakio Fearlessfist Lakumupine",
            "Anerea Roottanner Agu-Vavi",
            "Oriri Wanderspeaker Kalukatake",
            "Laukeo Flowerdrifter Thunukageane",
            "Nini Strongcarver Elanigone",
            "Manvea Hidecarver Thenalathala",
            "Lopeu Threaddream Thuluthea",
            "Ganna Thunderchaser Kalagatake",
            "Lamia Woundcook Veomatho",
            "Dilai Stormhunter Kolae-Gugoni",
            "Zaalea Stronghand Thunukanathi",
            "Agelea Longcook Kalukamino",
            "Vomeo Woundfriend Vathunigala"
    ]
    
    var maleAasimar =
        [
            "Welgim",
            "Tyldint",
            "Iltiem",
            "Briwur",
            "Mewint",
            "Rearnem",
            "Bavretul",
            "Ligretir",
            "Buldimor",
            "Ceirrovol",
            "Crarlum",
            "Ninleim",
            "Ukriam",
            "Ygin",
            "Lukriel",
            "Pirem",
            "Zaunliliam",
            "Teiditant",
            "Udrivaint",
            "Ugwedim"
    ]
    
    var femaleAasimar =
        [
            "Olta",
            "Wemmi",
            "Rine",
            "Zoro",
            "Brimme",
            "Olar",
            "Olterou",
            "Hinviele",
            "Rhiondrila",
            "Ildroma",
            "Rojea",
            "Rholi",
            "Thisla",
            "Nerke",
            "Enli",
            "Mase",
            "Rhollenoe",
            "Immoma",
            "Dromnezen",
            "Ivisoem"
    ]
    
    
}
