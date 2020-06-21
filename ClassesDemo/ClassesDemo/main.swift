//
//  main.swift
//  ClassesDemo
//
//  Created by Danny Aguswahyudy Jeremy on 06/06/20.
//  Copyright © 2020 Danny Aguswahyudy Jeremy. All rights reserved.

var skeleton1 = Enemy(health: 100, attackStrength: 10)
var skeleton2 = skeleton1

skeleton1.takeDamage(amount: 10)

skeleton1.takeDamage(amount: 10)
skeleton2.takeDamage(amount: 10)

print(skeleton2.health)
print(skeleton1.health)
