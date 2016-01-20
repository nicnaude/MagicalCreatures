//
//  MagicalCreature.h
//  MCMS
//
//  Created by Nicholas Naudé on 19/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject

//@property NSString *name;

@property NSString *creatureName;

@property NSString *creatureDetails;

-(instancetype) createCreature:(NSString *)creatureName1 details:(NSString *)creatureDetails1;

@end
