//
//  main.m
//  FoodTruck-Delgate 1
//
//  Created by Alex Wymer  on 2017-06-29.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "CookTwo.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
        
        Cook *cook = [[Cook alloc] init];
        CookTwo *cookTwo = [[CookTwo alloc] init];
        
        truckA.delegate = cook;
        truckB.delegate = cookTwo;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
