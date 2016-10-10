//
//  VilleTableController.m
//  KifoyiCarte
//
//  Created by 11408757 on 16/12/2014.
//  Copyright (c) 2014 11408757. All rights reserved.
//

#import "VilleTableController.h"



@interface VilleTableController ()

@end

@implementation VilleTableController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    tabImages =[NSArray arrayWithObjects:@"Paris", @"Rome",@"Tokyo",@"Los Angeles",@"Singapore",nil];
    
    tabLabel =[NSArray arrayWithObjects:@"Paris.jpg", @"rome.jpg",@"Tokyo.png",@"losangeles.jpg",@"singapore.jpg",nil];
    latitude = [NSArray arrayWithObjects:@"48.858391", @"41.8919300", @"35.6895000", @"34.0522222",@"1.3667", nil];
    longitude = [NSArray arrayWithObjects:@"2.35279", @"12.5113300", @"139.6917100", @"-118.2427778",@"103.8", nil];
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [tabImages count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier= @"villeCell";
    
    
    VilleTableCell *Cell=[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(Cell==nil){
    
        Cell = [[VilleTableCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    
    
    }
    
   Cell.labelVille.text = [tabImages objectAtIndex :[indexPath row]];
    
    UIImage *laPhoto =[UIImage imageNamed: [tabLabel objectAtIndex :[indexPath row]]];
   Cell.imageCell.image =laPhoto;
    
    return Cell;

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([[segue identifier] isEqualToString:@"afficherUneVille"]) {
       // VilleViewController *uneVille=[segue destinationViewController];
        NSIndexPath *monIndex =[self.tableView indexPathForSelectedRow];
        villeDetail = [[NSArray alloc] initWithObjects:
                                [tabImages objectAtIndex:[monIndex row]],
                                [tabLabel objectAtIndex:[monIndex row]],
                                [latitude objectAtIndex:[monIndex row]],
                                [longitude objectAtIndex:[monIndex row]],
                               nil];
        
    }
    
    
    
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
