//
//  CustomAnnotation.h
//  SampleCode
//
//  Created by Ти on 30.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapKit/MapKit.h"

@interface CustomAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate; // 9. подписались на свойство для координат из протокола

- (instancetype)initWithLatitude : (double) latitude andLongitude : (double) longitude;

@end
