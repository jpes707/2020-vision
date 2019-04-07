//
//  Candidate.swift
//  hackTJ
//
//  Created by Kevin Liu on 4/6/19.
//  Copyright © 2019 Kevin Liu. All rights reserved.
//

import Foundation
class Candidate
{
    var similarity: Int = 0 //0-40
    var foreign: Int = 0 //1-5, 1 is least involvement
    var abortion: Int = 0 //1-5, 1 is least supportive
    var gay: Int = 0 //1-5, 1 is least supportive
    var environment: Int = 0 //1-5, 1 is business, 5 is environment
    var taxRich: Int = 0 //0 is less taxes
    var borderWall: Int = 0 //0 is least supportive
    var gunControl: Int = 0 //1-5, 1 is least strict
    var healthcare: Int = 0 //1-5, 1 is least funding
    var name = ""
    var result = ""
    
    init() {
        self.foreign = 0
        self.abortion = 0
        self.gay = 0
        self.environment = 0
        self.taxRich = 0
        self.borderWall = 0
        self.gunControl = 0
        self.healthcare = 0
        self.name = ""
    }
    init(foreign: Int, abortion: Int, gay: Int, environment: Int, taxRich: Int, borderWall: Int, gunControl: Int, healthcare: Int, name: String){
        self.foreign = foreign
        self.abortion = abortion
        self.gay = gay
        self.environment = environment
        self.taxRich = taxRich
        self.borderWall = borderWall
        self.gunControl = gunControl
        self.healthcare = healthcare
        self.name = name
        self.similarity = 0
    }
    
    func getSim() ->Int{
        return similarity
    }
    
    func setSim(i: Int) {
        similarity = i;
    }
    
    func getForeign() ->Int{
        return foreign
    }
    
    func setForeign(i: Int) {
        foreign = i;
    }
    
    func getAbort() ->Int{
        return abortion
    }
    
    func setAbort(i: Int) {
        abortion = i;
    }
    
    func getGay() ->Int{
        return gay
    }
    
    func setGay(i: Int) {
        gay = i;
    }
    
    func getEnv() ->Int{
        return environment
    }
    
    func setEnv(i: Int) {
        environment = i;
    }
    
    func getTax() ->Int{
        return taxRich
    }
    
    func setTax(i: Int) {
        taxRich = i;
    }
    
    func getWall() ->Int{
        return borderWall
    }
    
    func setWall(i: Int) {
        borderWall = i;
    }
    
    func getGun() ->Int{
        return gunControl
    }
    
    func setGun(i: Int) {
        gunControl = i;
    }
    
    func getHealth() ->Int{
        return healthcare
    }
    
    func setHealth(i: Int) {
        healthcare = i;
    }
    
    func getName() -> String {
        return name;
    }
    
    func getResult() -> String {
    return result;
    }
    
    func setResult(s: String) {
        result = s;
    }
    
    func addSimilarity(value: Int){
        self.similarity+=value
    }
}
