//
//  Blacksmith.swift
//  Dnd UIKit Shopkeeper
//
//  Created by Nic Gibson on 12/15/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import Foundation

class Blacksmith {
    
    static var sharedInstance = Blacksmith()
    
    var numberOfLightArmor: Int = 1
    var numberOfMediumArmor: Int = 4
    var numberOfHeavyArmor: Int = 4
    var numberOfShields: Int = 1
    var numberOfSimpleMeleeWeapons: Int = 7
    var numberOfMartialMeleeWeapons: Int = 17
    var numberOfMagicItems: Int = 0
    
    var itemTypes: [String] =
        [
            "Light Armor", "Medium Armor", "Heavy Armor", "Shields", "Simple Melee Weapons", "Martial Weapons", "Magic Items"
    ]
    
    var blacksmithItems: [shopItem] =
        [
            shopItem(name: "Studded Leather", type: "Light Armor", description: "Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes.", price: 45, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Chain Shirt", type: "Medium Armor", description: "Made of interlocking metal rings, a Chain Shirt is worn between layers of clothing or leather. This armor offers modest Protection to the wearer’s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers. AC = 13 + Dex (Max 2)", price: 50, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Scale Mail", type: "Medium Armor", description: "This armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets. AC = 14 + Dex (Max 2), disadvantage on stealth checks.", price: 50, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Breastplate", type: "Medium Armor", description: "This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good Protection for the wearer’s vital organs while leaving the wearer relatively unencumbered. AC = 14 + Dex (Max 2)", price: 400, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Half Plate", type: "Medium Armor", description: "Half Plate consists of shaped metal plates that cover most of the wearer’s body. It does not include leg Protection beyond simple greaves that are attached with leather straps. AC = 15 + Dex (Max 2), disadvantage on stealth roles.", price: 750, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Ring Mail", type: "Heavy Armor", description: "This armor is Leather Armor with heavy rings sewn into it. The rings help reinforce the armor against blows from Swords and axes. Ring Mail is inferior to Chain Mail, and it's usually worn only by those who can’t afford better armor.", price: 30, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Chain Mail", type: "Heavy Armor", description: "Made of interlocking metal rings, Chain Mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.", price: 75, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Splint", type: "Heavy Armor", description: "This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible Chain Mail protects the joints.", price: 200, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Plate", type: "Heavy Armor", description: "Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body.", price: 1500, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Shield", type: "Armor", description: "A shield is made from wood or metal and is carried in one hand. Wielding a shield increases your Armor Class by 2.", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Dagger", type: "Simple Melee Weapon", description: "A  small blade, the weapon of choice for a rogue.", price: 2, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Handaxe", type: "Simple Melee Weapon", description: "A small hatchet meant for battle, or cutting down a small tree.", price: 5, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Javelin", type: "Simple Melee Weapon", description: "A sharp spear meant to be thrown in both sport and battle.", price: 5, currencyType: "SP", rarity: "Common"),
            shopItem(name: "Light Hammer", type: "Simple Melee Weapon", description: "A blunt metal weapon, yet also a handy tool.", price: 2, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Mace", type: "Simple Melee Weapon", description: "A cruel blunt instrument with sharp, metal spikes attached to the end.", price: 5, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Sickle", type: "Simple Melee Weapon", description: "A curved blade usually intended for clearing shrubbery.", price: 1, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Spear", type: "Simple Melee Weapon", description: "Proficiency with a spear allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n A long stick with a blade at the end. Made for shorties.", price: 1, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Battleaxe", type: " Martial Melee Weapon", description: "Proficiency with a battleaxe allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n A double headed war axe that deals 1d8 slashing damage on a successful hit.", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Flail", type: "Martial Melee Weapon", description: "Proficiency with a flail allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n A spiky ball attached to a stick with a chain. Deal 1d8 bludgeoning damage.", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Glaive", type: "Martial Melee Weapon", description: "Proficiency with a glaive allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n A more versatile spear, deal 1d10 slashing damage on a successful hit.", price: 20, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Greataxe", type: "Martial Melee Weapon", description: "Proficiency with a greataxe allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n A great big axe. Must be big and/or strong to wield. Deal 1d12 slashing/bludgeoning/whatever you want on a successful hit.", price: 30, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Greatsword", type: "Martial Melee Weapon", description: "Proficiency with a greatsword allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Big boy sword. Deal 2d6 slashing damage on a successful hit.", price: 50, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Halberd", type: "Martial Melee Weapon", description: "Proficiency with a halberd allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Unique sharp blade at the end of a pole, deal 1d10 slashing and then go get a normal sword.", price: 20, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Lance", type: "Martial Melee Weapon", description: "Proficiency with a lance allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n You have disadvantage when you use a lance to attack a target within 5 feet of you. Also, a lance requires two hands to wield when you aren't mounted.1d12", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Longsword", type: "Martial Melee Weapon", description: "Proficiency with a longsword allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Deals 1d8 slashing damage upon a successful hit.", price: 15, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Maul", type: "Martial Melee Weapon", description: "Proficiency with a maul allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n A heavy, two-handed weapon dealing 2d6 bludgeoning damage on a successful hit.", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Morningstar", type: "Martial Melee Weapon", description: "Proficiency with a morningstar allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Deals 1d8 bludgeoning damage.", price: 15, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Pike", type: "Martial Melee Weapon", description: "Proficiency with a pike allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Heavy, reach, two-handed, this weapon allows 1d10 piercing damage upon a successful hit.", price: 5, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Rapier", type: "Martial Melee Weapon", description: "Proficiency with a rapier allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Allows 1d8 piercing upon a successful hit.", price: 25, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Scimitar", type: "Martial Melee Weapon", description: "Proficiency with a scimitar allows you to add your proficiency bonus to the attack roll for any attack you make with it. \n Hits for 1d6 slashing damage.", price: 25, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Shortsword", type: "Martial Melee Weapon", description: "1d6", price: 10, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Trident", type: "Martial Melee Weapon", description: "1d6", price: 5, currencyType: "GP", rarity: "Common"),
            shopItem(name: "War Pick", type: "Martial Melee Weapon", description: "Why do you want this? Hits for 1d8 piercing", price: 5, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Warhammer", type:  "Martial Melee Weapon", description: "1d8", price: 15, currencyType: "GP", rarity: "Common")
    ]
    
    var commonBlacksmithItems: [shopItem] =
        [
            shopItem(name: "Armor of Gleaming", type: "Medium or Heavy", description: "This armor never gets dirty", price: 100, currencyType: "+ base cost", rarity: "Common"),
            shopItem(name: "Cast-off Armor", type: "Light, Medium or Heavy", description: "You can use an action to doff this armor", price: 100, currencyType: "+ base cost", rarity: "Common"),
            shopItem(name: "Shield of Expression", type: "Shield", description: "The front of this shield is shaped in the likeness of a face. While bearing the shield, you can use a bonus action to alter the face’s expression.", price: 100, currencyType: "GP", rarity: "Common"),
            shopItem(name: "Smoldering Armor", type: "Any", description: "Wisps of harmless, odorless smoke rise from this armor while it is worn.", price: 100, currencyType: "+ base cost", rarity: "Common")
        ]
    
    var uncommonBlacksmithItems: [shopItem] =
            [
            shopItem(name: "Adamantine Armor", type: "Medium or Heavy", description: "Armor made of extraordinarily tough and rare metal", price: 2000, currencyType: "GP", rarity: "Uncommon"),
            shopItem(name: "Mariner's Armor", type: "Armor", description: "While wearing this armor, you have a swimming speed equal to your walking speed. In addition, whenever you start your turn underwater with 0 hit points, the armor causes you to rise 60 feet toward the surface. The armor is decorated with fish and shell motifs.", price: 1500, currencyType: "GP", rarity: "Uncommon"),
            shopItem(name: "Mithral Armor", type: "Medium or Heavy", description: "Mithral is a light, flexible metal. A mithral chain shirt or breastplate can be worn under normal clothes. /n If the armor normally imposes disadvantage on Dexterity (Stealth) checks or has a Strength requirement, the mithral version of the armor doesn't.", price: 800, currencyType: "+ base cost", rarity: "Uncommon"),
            shopItem(name: "Sentinel Shield", type: "Shield", description: "While holding this shield, you have advantage on initiative rolls and Wisdom (Perception) checks. The shield is emblazoned with a symbol of an eye.", price: 20000, currencyType: "GP", rarity: "Uncommon"),
            shopItem(name: "+1 Shield", type: "Shield", description: "While holding this shield, you have a +1 bonus to AC. This bonus is in addition to the shield's normal bonus to AC.", price: 1500, currencyType: "GP", rarity: "Uncommon")
            ]
    
    var rareBlacksmithItems: [shopItem] =
        [
            shopItem(name: "Armor of Resistance", type: "Breastplate", description: "You have resistance to one type of damage while you wear this armor. The DM chooses the type or determines it randomly", price: 6000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "+1 Armor", type: "Light, Medium, or Heavy", description: "You have a +1 AC bonus while wearing this armor", price: 1500, currencyType: "+ base cost", rarity: "Rare"),
            shopItem(name: "Arrow-catching Shield", type: "Shield", description: "You gain a +2 bonus to AC against ranged attacks while you wield this shield. This bonus is in addition to the shield's normal bonus to AC. In addition, whenever an attacker makes a ranged attack against a target within 5 feet of you, you can use your reaction to become the target of the attack instead.", price: 6000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "Dragon Guard", type: "Breastplate", description: "You have a +1 bonus to AC while wearing this armor. \n This +1 breastplate has a gold dragon motif worked into its design. Created for a human hero of Neverwinter named Tergon, it grants its wearer advantage on saving throws against the breath weapons of creatures that have the dragon type. \n This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good protection for the wearer's vital organs while leaving the wearer relatively unencumbered.", price: 6000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "Elven Chain", type: "Chain Mail", description: "You gain a +1 bonus to AC while you wear this armor. You are considered proficient with this armor even if you lack proficiency with medium armor.", price: 4000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "Glamoured Studded Leather", type: "Studded Leather", description: "While wearing this armor, you gain a +1 bonus to AC. You can also use a bonus action to speak the armor's command word and cause the armor to assume the appearance of a normal set of clothing or some other kind of armor. You decide what it looks like, including color, style, and accessories, but the armor retains its normal bulk and weight. The illusory appearance lasts until you use this property again or remove the armor.", price: 2000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "Scorpion Armor", type: "Plate", description: "This suit of plate armor is fashioned from giant scorpion chitin. While wearing this armor, you gain the following benefits: \n - The armor improves your combat readiness, granting you a +5 bonus to initiative as long as you aren’t incapacitated. \n - The armor doesn’t impose disadvantage on your Dexterity (Stealth) checks. \n - The armor doesn’t impose disadvantage on saving throws made to resist the effects of extreme heat (see chapter 5 of the Dungeon Master’s Guide). \n - Curse. This armor is cursed. Whenever you don or doff it, you must make a DC 15 Constitution saving throw, taking 100 (10d10 + 45) poison damage on a failed save, or half as much damage on a successful one. Only a wish spell can remove the armor’s curse.", price: 4000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "Shield of Missile Attraction", type: "Shield", description: "While holding this shield, you have resistance to damage from ranged weapon attacks. \n Curse. This shield is cursed. Attuning to it curses you until you are targeted by the remove curse spell or similar magic. Removing the shield fails to end the curse on you. Whenever a ranged weapon attack is made against a target within 10 feet of you, the curse causes you to become the target instead.", price: 6000, currencyType: "GP", rarity: "Rare"),
            shopItem(name: "+2 Shield", type: "Shield", description: "While holding this shield, you have a +2 bonus to AC. This bonus is in addition to the shield's normal bonus to AC.", price: 6000, currencyType: "GP", rarity: "Rare"),
        ]
    
    var veryRareBlacksmithItems: [shopItem] =
        [
            shopItem(name: "Animated Shield", type: "Shield", description: "While holding this shield, you can speak its command word as a bonus action to cause it to animate. The shield leaps into the air and hovers in your space to protect you as if you were wielding it, leaving your hands free. The shield remains animated for 1 minute, until you use a bonus action to end this effect, or until you are incapacitated or die, at which point the shield falls to the ground or into your hand if you have one free.", price: 6000, currencyType: "GP", rarity: "Very Rare"),
            shopItem(name: "+2 Armor", type: "Light, Medium, or Heavy", description: "You have a +2 AC bonus while wearing this armor", price: 6000, currencyType: "+ base cost", rarity: "Very Rare"),
            shopItem(name: "Demon Armor", type: "Plate", description: "While wearing this armor, you gain a +1 bonus to AC, and you can understand and speak Abyssal. In addition, the armor's clawed gauntlets turn unarmed strikes with your hands into magic weapons that deal slashing damage, with a +1 bonus to attack rolls and damage rolls and a damage die of 1d8. \n Curse: Once you don this cursed armor, you can't doff it unless you are targeted by the remove curse spell or similar magic. While wearing the armor, you have disadvantage on attack rolls against demons and on saving throws against their spells and special abilities.", price: 5000, currencyType: "GP", rarity: "Very Rare"),
            shopItem(name: "Dragon Scale Mail", type: "Scale Mail", description: "Dragon scale mail is made of the scales of one kind of dragon. Sometimes dragons collect their cast-off scales and gift them to humanoids. Other times, hunters carefully skin and preserve the hide of a dead dragon. In either case, dragon scale mail is highly valued. \n While wearing this armor, you gain a +1 bonus to AC, you have advantage on saving throws against the Frightful Presence and breath weapons of dragons, and you have resistance to one damage type that is determined by the kind of a dragon that provided the scales. \n Additionally, you can focus your senses as an action to magically discern the distance and direction to the closest dragon of the type of armor within 30 miles of you. This special action can't be used again until the next dawn.", price: 4000, currencyType: "GP", rarity: "Very Rare"),
            shopItem(name: "Dwarven Plate", type: "Plate", description: "While wearing this armor, you gain a +2 bonus to AC. In addition, if an effect moves you against your will along the ground, you can use your reaction to reduce the distance you are moved by up to 10 feet.", price: 9000, currencyType: "GP", rarity: "Very Rare"),
            shopItem(name: "+3 Shield", type: "Shield", description: "While holding this shield, you have a +3 bonus to AC. This bonus is in addition to the shield's normal bonus to AC.", price: 24000, currencyType: "GP", rarity: "Very Rare"),
            shopItem(name: "Spellguard Shield", type: "Shield", description: "While holding this shield, you have advantage on saving throws against spells and other magical effects, and spell attacks have disadvantage against you.", price: 50000, currencyType: "GP", rarity: "Very Rare")
        ]
    
    var legendaryBlacksmithItems: [shopItem] =
        [
            shopItem(name: "Armor of Invulnerability", type: "Plate", description: "You have resistance to nonmagical damage while you wear this armor. Additionally, you can use an action to make yourself immune to nonmagical damage for 10 minutes or until you are no longer wearing the armor. Once this special action is used, it can't be used again until the next dawn.", price: 18000, currencyType: "GP", rarity: "Legendary"),
            shopItem(name: "+3 Armor", type: "Light, Medium, or Heavy", description: "You have a +3 AC bonus while wearing this armor", price: 24000, currencyType: "+ base cost", rarity: "Legendary"),
            shopItem(name: "Efreeti Chain", type: "Chain Mail", description: "While wearing this armor, you gain a +3 bonus to AC, you are immune to fire damage, and you can understand and speak Primordial. In addition, you can stand on and walk across molten rock as if it were solid ground.", price: 20000, currencyType: "GP", rarity: "Legendary"),
            shopItem(name: "Plate Armor of Etherealness", type: "Plate", description: "While you're wearing this armor, you can speak its command word as an action to gain the effect of the etherealness spell, which last for 10 minutes or until you remove the armor or use an action to speak the command word again. This property of the armor can't be used again until the next dawn.", price: 48000, currencyType: "GP", rarity: "Legendary")
        ]
    
    
    
    
    //    var armorTypes: [String] =
    //        [
    //            "Light", "Medium", "Heavy", "Shields", "Simple Melee Weapons", "Martial Weapons"
    //        ]
    //
    //    var lightArmorTypes: [shopItem] =
    //        [
    //            shopItem(name: "Studded Leather", type: "Armor", description: "Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes.", price: 45, currencyType: "GP", rarity: "Common")
    //    ]
    //
    //    var mediumArmorTypes: [shopItem] =
    //        [
    //            shopItem(name: "Chain Shirt", type: "Armor", description: "Made of interlocking metal rings, a Chain Shirt is worn between layers of clothing or leather. This armor offers modest Protection to the wearer’s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers. AC = 13 + Dex (Max 2)", price: 50, currencyType: "GP", rarity: "Common"),
    //            shopItem(name: "Scale Mail", type: "Armor", description: "This armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets. AC = 14 + Dex (Max 2), disadvantage on stealth checks.", price: 50, currencyType: "GP", rarity: "Common"),
    //            shopItem(name: "Breastplate", type: "Armor", description: "This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good Protection for the wearer’s vital organs while leaving the wearer relatively unencumbered. AC = 14 + Dex (Max 2)", price: 400, currencyType: "GP", rarity: "Common"),
    //            shopItem(name: "Half Plate", type: "Armor", description: "Half Plate consists of shaped metal plates that cover most of the wearer’s body. It does not include leg Protection beyond simple greaves that are attached with leather straps. AC = 15 + Dex (Max 2), disadvantage on stealth roles.", price: 750, currencyType: "GP", rarity: "Common")
    //    ]
    //
    //    var heavyArmorTypes: [shopItem] =
    //    [
    //        shopItem(name: "Ring Mail", type: "Armor", description: "This armor is Leather Armor with heavy rings sewn into it. The rings help reinforce the armor against blows from Swords and axes. Ring Mail is inferior to Chain Mail, and it's usually worn only by those who can’t afford better armor.", price: 30, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Chain Mail", type: "Armor", description: "Made of interlocking metal rings, Chain Mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.", price: 75, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Splint", type: "Armor", description: "This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible Chain Mail protects the joints.", price: 200, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Plate", type: "Armor", description: "Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body.", price: 1500, currencyType: "GP", rarity: "Common")
    //    ]
    //
    //    var shields: [shopItem] =
    //    [
    //        shopItem(name: "Shield", type: "Armor", description: "A shield is made from wood or metal and is carried in one hand. Wielding a shield increases your Armor Class by 2.", price: 10, currencyType: "GP", rarity: "Common")
    //    ]
    //
    //    var simpleMeleeWeapons: [shopItem] =
    //    [
    //        shopItem(name: "Dagger", type: "Simple Melee Weapon", description: "A  small blade", price: 2, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Handaxe", type: "Simple Melee Weapon", description: "A small hatchet meant for battle", price: 5, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Javelin", type: "Simple Melee Weapon", description: "A sharp spear meant to be thrown", price: 5, currencyType: "SP", rarity: "Common"),
    //        shopItem(name: "Light Hammer", type: "Simple Melee Weapon", description: "A blunt metal weapon", price: 2, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Mace", type: "Simple Melee Weapon", description: "", price: 5, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Sickle", type: "Simple Melee Weapon", description: "", price: 1, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Spear", type: "Simple Melee Weapon", description: "", price: 1, currencyType: "GP", rarity: "Common")
    //    ]
    //
    //    var martialMeleeWeapons : [shopItem] =
    //    [
    //        shopItem(name: "Battleaxe", type: " Martial Melee Weapon", description: "1d8", price: 10, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Flail", type: "Martial Melee Weapon", description: "1d8", price: 10, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Glaive", type: "Martial Melee Weapon", description: "1d10", price: 20, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Greataxe", type: "Martial Melee Weapon", description: "1d12", price: 30, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Greatsword", type: "Martial Melee Weapon", description: "2d6", price: 50, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Halberd", type: "Martial Melee Weapon", description: "1d10", price: 20, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Lance", type: "Martial Melee Weapon", description: "1d12", price: 10, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Longsword", type: "Martial Melee Weapon", description: "1d8", price: 15, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Maul", type: "Martial Melee Weapon", description: "2d6", price: 10, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Morningstar", type: "Martial Melee Weapon", description: "1d8", price: 15, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Pike", type: "Martial Melee Weapon", description: "1d10", price: 5, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Rapier", type: "Martial Melee Weapon", description: "1d8", price: 25, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Scimitar", type: "Martial Melee Weapon", description: "1d6", price: 25, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Shortsword", type: "Martial Melee Weapon", description: "1d6", price: 10, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "Trident", type: "Martial Melee Weapon", description: "1d6", price: 5, currencyType: "GP", rarity: "Common"),
    //        shopItem(name: "War Pick", type: "Martial Melee Weapon", description: "1d8", price: 5, currencyType: "GP", rarity: "Common"),
    //         shopItem(name: "Warhammer", type:  "Martial Melee Weapon", description: "1d8", price: 15, currencyType: "GP", rarity: "Common")
    //
    //    ]
    
    
}
