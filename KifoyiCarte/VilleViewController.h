//
//  VilleViewController.h
//  KifoyiCarte
//
//  Created by 11408757 on 16/12/2014.
//  Copyright (c) 2014 11408757. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface VilleViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageVille;
@property (weak, nonatomic) IBOutlet UILabel *villeNom;
@property (weak, nonatomic) IBOutlet MKMapView *carte;


@end

NSArray *villeDetail;
