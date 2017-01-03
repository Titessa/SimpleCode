//
//  CustomImagePinView.h
//  SampleCode
//
//  Created by Ти on 31.12.16.
//  Copyright © 2016 Ти. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface CustomImagePinView : MKAnnotationView

@property (nonatomic, strong) UIImageView * imageView;

- (instancetype)initWithImage;

@end
