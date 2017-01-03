//
//  CustomImagePinView.m
//  SampleCode
//
//  Created by Ти on 31.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import "CustomImagePinView.h"

@implementation CustomImagePinView

- (instancetype)initWithImage
{
    self = [super init];
    if (self) {
        self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 25, 30)];
        self.imageView.image = [UIImage imageNamed:@"pin.png"];
        
        [self addSubview:self.imageView];
    }
    return self;
}

@end
