//
//  CustomAnnotation.m
//  SampleCode
//
//  Created by Ти on 30.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation

- (instancetype)initWithLatitude : (double) latitude andLongitude : (double) longitude
{
    self = [super init];
    if (self) {
        _coordinate.latitude = latitude;  //приравниваем числа из строчки выше к этой структуре CLLocationCoordinate2D
        _coordinate.longitude = longitude;
    }
    return self;
}

@end
