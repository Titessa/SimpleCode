//
//  AustriaViewController.m
//  SampleCode
//
//  Created by Ти on 30.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import "AustriaViewController.h"
#import "MapViewController.h"
#import "PinsLocation.h"

@interface AustriaViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonAustriaMap;
@property (nonatomic, strong) NSArray * arrayLoc;

@end

@implementation AustriaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(buttonAustriaMethod:) name:NOTIFICATION_WHEN_AUSTRIA_IS_LOADED object:nil];
    
    PinsLocation * pinsLoc = [[PinsLocation alloc]init];
    [pinsLoc setAustriaPin];
}

-(void) dealloc {
       [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) buttonAustriaMethod : (NSNotification*) notific {
    MapViewController * mapViewContr = [self.storyboard instantiateViewControllerWithIdentifier:@"mapView"];
    [self.navigationController pushViewController:mapViewContr animated:YES];
    // принятие нотификации а после
    self.arrayLoc = [[NSArray alloc]init];
    [_arrayLoc arrayByAddingObject:notific];
    NSLog(@"hgh %@", _arrayLoc);
    //self.arrayLoc =
    
    
}



@end
