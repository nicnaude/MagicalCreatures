//
//  CreatureViewController.m
//  MCMS
//
//  Created by Nicholas Naudé on 19/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import "CreatureViewController.h"
#import "ViewController.h"



@interface CreatureViewController ()<UITextFieldDelegate>



@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (weak, nonatomic) IBOutlet UIImageView *creatureImage;

@property (weak, nonatomic) IBOutlet UITextField *editNameTextFieldNew;

@property (weak, nonatomic) IBOutlet UITextField *editDetailTextField;

@property (weak, nonatomic) IBOutlet UIButton *editButton;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.editNameTextFieldNew.hidden=TRUE;
    self.editDetailTextField.hidden=TRUE;
    self.nameLabel.text = self.creatureDetailObject.creatureName;
    self.detailLabel.text = self.creatureDetailObject.creatureDetails;
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:self.view];
//    
//    self.navigationItem.rightBarButtonItem = item;
}
- (IBAction)onEditButtonTapped:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"EDIT"]) {
        self.editNameTextFieldNew.hidden = NO;
        self.editDetailTextField.hidden = NO;
        
        self.editNameTextFieldNew.text = self.nameLabel.text;
        self.editDetailTextField.text = self.detailLabel.text;
        
        [sender setTitle:@"DONE" forState:UIControlStateNormal];
    } else if([sender.titleLabel.text isEqualToString:@"DONE"]){
        [sender setTitle:@"EDIT" forState:UIControlStateNormal];
        
        self.nameLabel.text = self.editNameTextFieldNew.text;
        self.detailLabel.text = self.editDetailTextField.text;
        
        self.creatureDetailObject.creatureName = self.editNameTextFieldNew.text;
        self.creatureDetailObject.creatureDetails = self.editDetailTextField.text;
        
        self.editNameTextFieldNew.hidden=TRUE;
        self.editDetailTextField.hidden=TRUE;
    }
    
}

@end
