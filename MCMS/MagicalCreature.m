//
//  MagicalCreature.m
//  MCMS
//
//  Created by Nicholas Naudé on 19/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype) createCreature:(NSString *)creatureName1 details:(NSString *)creatureDetails1;
{
    //self = [super init];
    self.creatureName = creatureName1;
    self.creatureDetails = creatureDetails1;
    return self;
}

@end