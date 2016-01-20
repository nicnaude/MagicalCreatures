//
//  battleViewController.m
//  MCMS
//
//  Created by Nicholas Naudé on 19/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import "battleViewController.h"

@interface battleViewController ()

@property (weak, nonatomic) IBOutlet UILabel *playerOneTitle;
@property (weak, nonatomic) IBOutlet UILabel *playerOneDetail;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoTitle;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoDetail;

@end

@implementation battleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.playerOneTitle.text = self.creatureBattleObject1.creatureName;
    self.playerOneDetail.text = self.creatureBattleObject1.creatureDetails;
    
    self.playerTwoTitle.text = self.creatureBattleObject2.creatureName;
    self.playerTwoDetail.text = self.creatureBattleObject2.creatureDetails;
}


@end
