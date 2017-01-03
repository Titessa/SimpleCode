//
//  PinsLocation.m
//  SampleCode
//
//  Created by Ти on 30.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import "PinsLocation.h"
#import "CustomAnnotation.h"

@implementation PinsLocation

-(void) setAustriaPin {
    NSNumber * oneLat = [NSNumber numberWithDouble:55.75570141716898]; //взяли числа и обернули их в общект нснамбер
    NSNumber * oneLon = [NSNumber numberWithDouble:37.6172411441803];
    NSDictionary * dickNotific = [[NSDictionary alloc]initWithObjectsAndKeys:oneLat,@"lat",oneLon, @"lon", nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_WHEN_AUSTRIA_IS_LOADED object:nil userInfo:dickNotific];
}

-(void) setBelgiumpin {

}
@end
