//
//  ViewController.m
//  SampleCode
//
//  Created by Ти on 29.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import "ViewController.h"
#import "AustriaViewController.h"
#import "BelgiumViewController.h"

@interface ViewController ()

- (IBAction)buttonAustria:(id)sender;
- (IBAction)buttonBelgium:(id)sender;
- (IBAction)buttonGermany:(id)sender;
- (IBAction)buttonIseland:(id)sender;
- (IBAction)buttonRussia:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *austria;
@property (weak, nonatomic) IBOutlet UIImageView *belgium;
@property (weak, nonatomic) IBOutlet UIImageView *germany;
@property (weak, nonatomic) IBOutlet UIImageView *iseland;
@property (weak, nonatomic) IBOutlet UIImageView *russia;
@property (weak, nonatomic) IBOutlet UIImageView *austriaFlag;
@property (weak, nonatomic) IBOutlet UIImageView *belgiumFlag;
@property (weak, nonatomic) IBOutlet UIImageView *germanyFlag;
@property (weak, nonatomic) IBOutlet UIImageView *iselandFlag;
@property (weak, nonatomic) IBOutlet UIImageView *russiaFlag;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self flagsAndPicturesOfTheCountries];
}

-(void) flagsAndPicturesOfTheCountries {
    self.austria.layer.contents = (id) [UIImage imageNamed:@"Austria.jpg"].CGImage;
    self.belgium.layer.contents = (id) [UIImage imageNamed:@"Belgium.jpg"].CGImage;
    self.germany.layer.contents = (id) [UIImage imageNamed:@"Germany.jpg"].CGImage;
    self.iseland.layer.contents = (id) [UIImage imageNamed:@"Iseland.jpg"].CGImage;
    self.russia.layer.contents = (id) [UIImage imageNamed:@"Russia.jpg"].CGImage;
    self.austriaFlag.layer.contents = (id) [UIImage imageNamed:@"AustriaFlag.png"].CGImage;
    self.belgiumFlag.layer.contents = (id) [UIImage imageNamed:@"BelgiumFlag.jpg"].CGImage;
    self.germanyFlag.layer.contents = (id) [UIImage imageNamed:@"GermanyFlag.png"].CGImage;
    self.iselandFlag.layer.contents = (id) [UIImage imageNamed:@"IselandFlag.png"].CGImage;
    self.russiaFlag.layer.contents = (id) [UIImage imageNamed:@"RussiaFlag.png"].CGImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonAustria:(id)sender {
    AustriaViewController * austriaView = [self.storyboard instantiateViewControllerWithIdentifier:@"austriaView"];
    [self.navigationController pushViewController:austriaView animated:YES];
}

- (IBAction)buttonBelgium:(id)sender {
}

- (IBAction)buttonGermany:(id)sender {
}

- (IBAction)buttonIseland:(id)sender {
}

- (IBAction)buttonRussia:(id)sender {
}
@end
