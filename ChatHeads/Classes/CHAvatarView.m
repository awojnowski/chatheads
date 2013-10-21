//
//  AvatarView.m
//
//  Created by Matthias Hochgatterer on 21.11.12.
//  Copyright (c) 2012 Matthias Hochgatterer. All rights reserved.
//

#import "CHAvatarView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CHAvatarView {
    
    UIImageView *_imageView;
    
}

-(id)init {
    
    self = [super init];
    if (self) {
        
        [self sharedInit];
        
    }
    return self;
    
}

-(id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self sharedInit];
        
    }
    return self;
    
}

-(void)sharedInit {
    
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0,2);
    self.layer.shadowRadius = 2;
    self.layer.shadowOpacity = 0.7f;
    
    _imageView = [[UIImageView alloc] init];
    [_imageView setClipsToBounds:YES];
    [_imageView setContentMode:UIViewContentModeScaleAspectFill];
    [self addSubview:_imageView];
    
}

-(void)layoutSubviews {
    
    [super layoutSubviews];
    
    [_imageView setFrame:[self bounds]];
    [[_imageView layer] setCornerRadius:CGRectGetHeight([self bounds]) / 2.0];
    
}

-(void)setImage:(UIImage *)image {
    
    _image = image;
    
    [_imageView setImage:image];
    
}

@end
