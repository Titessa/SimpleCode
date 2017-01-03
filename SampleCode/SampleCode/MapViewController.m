//
//  MapViewController.m
//  SampleCode
//
//  Created by Ти on 29.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>
#import "PinsLocation.h"
#import "CustomAnnotation.h"
#import "CustomImagePinView.h"

@interface MapViewController () <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) NSArray * arrayLoc ;

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(methodAdoptingTheNotification:) name:NOTIFICATION_WHEN_AUSTRIA_IS_LOADED object:nil];
    
  // PinsLocation * pinsLoc = [[PinsLocation alloc]init];
  //  [pinsLoc setAustriaPin];

    
}

//-(void) dealloc {
//    [[NSNotificationCenter defaultCenter] removeObserver:self];
//}

//-(void) methodAdoptingTheNotification : (NSNotification*) notific {
    
//    NSLog(@"work out");
   // self.arrayLoc = [[NSArray alloc]initWithObjects:notific, nil];
    
    //for (int i = 0; i < _arrayLoc.count; i++) {
  //      NSDictionary * dict = [_arrayLoc objectAtIndex:i]; // берем из массива объекты с индексом i
  //      double lat = [[dict objectForKey:@"lat"]floatValue]; // будет равен объктам с ключом lat
   //     double lon= [[dict objectForKey:@"lon"]floatValue]; // floatValue - говорит, что число плавающее
        
        //  11. создали custom annotation и теперь активируем его здесь (то есть данные возвращаются сюда?)
        
   //     CustomAnnotation * annotation = [[CustomAnnotation alloc]initWithLatitude:lat andLongitude: lon];
    //    [self.mapView addAnnotation:annotation]; // anotation это добавление наших пинов = anotationView
    
  //  }
//}

-(void) methodAdoptingTheNotification : (NSArray *) arrayLoc {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) centerOnUserLocation : (CLLocationCoordinate2D) coord {
    //Задаем центр координат которые будут показаны на экране и диапазон экрана (при первом открытии масштаб карты)
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 1000, 10000);
    [self.mapView setRegion:region animated:YES];
    NSLog(@"its too");
}

- (nullable MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation{
    
        CustomImagePinView * customPin = [[CustomImagePinView alloc]initWithImage];
        customPin.canShowCallout = NO;
        return customPin;
}

- (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView {
   
}



@end
