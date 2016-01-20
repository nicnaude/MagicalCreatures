//
//  ViewController.m
//  MCMS
//
//  Created by Nicholas Naudé on 19/01/2016.
//  Copyright © 2016 Nicholas Naudé. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"
#import "battleViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITableView *creatureTableView;
@property (weak, nonatomic) IBOutlet UITextField *creatureName;
@property (weak, nonatomic) IBOutlet UITextField *creatureDetails;
@property NSMutableArray *creatures;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.creatures = [[NSMutableArray alloc]init];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    cell.textLabel.text = [[self.creatures objectAtIndex:indexPath.row] creatureName];
    cell.detailTextLabel.text = [[self.creatures objectAtIndex:indexPath.row] creatureDetails];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

- (IBAction)onAddButtonTapped:(UIButton *)sender {
    MagicalCreature *newCreature = [[MagicalCreature alloc] createCreature:self.creatureName.text details:self.creatureDetails.text];
    [self.creatures addObject:newCreature];
    NSLog(@"%@",self.creatures.description);
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"creatureSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        CreatureViewController *creatureDetailView = segue.destinationViewController;
        
        creatureDetailView.creatureDetailObject = [self.creatures objectAtIndex:indexPath.row];
    } else {
        battleViewController *playerOne = segue.destinationViewController;
        
        playerOne.creatureBattleObject1 = self.creatures[0];
        playerOne.creatureBattleObject2 = self.creatures[1];
    }
    
    //    creatureDetailView.creatureNameLabel = [[self.creatures objectAtIndex:indexPath.row] creatureName];
    //
    //    creatureDetailView.creatureDetailLabel = [[self.creatures objectAtIndex:indexPath.row] creatureDetails];
    //
    //    creatureDetailView.title = [[self.creatures objectAtIndex:indexPath.row] creatureName];
}

@end
