//
//  VilleViewController.m
//  KifoyiCarte
//
//  Created by 11408757 on 16/12/2014.
//  Copyright (c) 2014 11408757. All rights reserved.
//

#import "VilleViewController.h"



@interface VilleViewController ()

@end

@implementation VilleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    villeNom.text =[villeDetail objectAtIndex:0];
    imageVille.image =[UIImage imageNamed:[villeDetail objectAtIndex:1]];
    NSString * latitude = [villeDetail objectAtIndex:2];
    NSString * longitude = [villeDetail objectAtIndex:3];
    
    double lati = [latitude doubleValue];
    double longi = [longitude doubleValue];
    /*debut fonction que jai ajouter*/
    
    // Définir le zoom
    MKCoordinateSpan span;
    span.latitudeDelta=0.2;
    span.longitudeDelta=0.2;
    
    // Définir les coordonnées
    CLLocationCoordinate2D parisCoordinates;
    parisCoordinates.latitude=lati;
    parisCoordinates.longitude=longi;
    
    MKCoordinateRegion parisRegion;
    parisRegion.span=span;
    parisRegion.center=parisCoordinates;
    
    // Centrer la carte 
    [carte setRegion:parisRegion animated:TRUE];
    
    // Ajouter la carte à la vue
    [self.view insertSubview:carte atIndex:0];
    /*fin fonction que jai ajouter*/
    }
    
    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@synthesize imageVille;
@synthesize villeNom;
@synthesize carte;

@end
