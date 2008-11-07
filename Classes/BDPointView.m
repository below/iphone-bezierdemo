//
//  BDPointView.m
//  BezierDemo
//
//  Created by Alexander v. Below on 07.11.08.
//  Copyright 2008 AVB Software. All rights reserved.
//

#import "BDPointView.h"


@implementation BDPointView
@synthesize color;

- (id)initWithFrame:(CGRect)frame color:(UIColor *)newColor{
    if (self = [super initWithFrame:frame]) {
		self.color = newColor;
    }
    return self;
}

- (BOOL) isOpaque {
	return NO;
}

- (void)drawRect:(CGRect)rect {
	CGContextRef ctx = UIGraphicsGetCurrentContext();
	CGFloat w = self.bounds.size.width;
	CGFloat h = self.bounds.size.height;
	
	self.backgroundColor = [UIColor clearColor];
	[self.color set];
	CGMutablePathRef crossPath = CGPathCreateMutable();
	CGPathMoveToPoint(crossPath, nil, 0, 0);
	CGPathAddLineToPoint(crossPath, nil, w, h);
	CGPathMoveToPoint(crossPath, nil, 0, w);
	CGPathAddLineToPoint(crossPath, nil, h, 0);
	CGPathCloseSubpath(crossPath);
	CGContextAddPath(ctx, crossPath);
	CGContextStrokePath(ctx);
	CFRelease(crossPath);
}


- (void)dealloc {
    [super dealloc];
}


@end
