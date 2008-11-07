//
//  BDBezierView.m
//  BezierDemo
//
//  Created by Alexander v. Below on 07.11.08.
//  Copyright 2008 AVB Software. All rights reserved.
//

#import "BDBezierView.h"


@implementation BDBezierView

- (id)initWithCoder:(NSCoder *)aCoder {
	if (self = [super initWithCoder:aCoder])
	{
		[self setUpView];
	}
	return self;
}

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
		[self setUpView];
	}
    return self;
}


- (void) setUpView {
	CGFloat w = self.bounds.size.width;
	// CGFloat h = self.bounds.size.height;

	startView = [[BDPointView alloc] initWithFrame:CGRectMake(20, 200, 40, 40) color:[UIColor redColor]];
	endView = [[BDPointView alloc] initWithFrame:CGRectMake(w-60, 200, 40, 40) color:[UIColor redColor]];
	controlView = [[BDPointView alloc] initWithFrame:CGRectMake(w/2-20, 100, 40, 40) color:[UIColor blueColor]];
	
	[self addSubview:startView];
	[self addSubview:endView];
	[self addSubview:controlView];
}

- (void)drawRect:(CGRect)rect {
	CGContextRef ctx;
	ctx = UIGraphicsGetCurrentContext();
	
	CGMutablePathRef bezierPath = CGPathCreateMutable();
	
	CGPathMoveToPoint(bezierPath, nil, startView.center.x, startView.center.y);
	CGPathAddQuadCurveToPoint(bezierPath, nil, controlView.center.x, controlView.center.y, endView.center.x, endView.center.y);
	CGContextAddPath(ctx, bezierPath);
	CGContextStrokePath(ctx);
	CFRelease(bezierPath);
}

- (void)dealloc {
    [super dealloc];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
	UITouch *touch = [touches anyObject];
	
	// If the touch was in the placardView, move the placardView to its location
	if ([[touch view] isKindOfClass:[BDPointView self]]) {
		CGPoint location = [touch locationInView:self];
		[touch view].center = location;	
		[self setNeedsDisplay];
		return;
	}
}


- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
	UITouch *touch = [touches anyObject];
	
	// If the touch was in the placardView, bounce it back to the center
	if ([[touch view] isKindOfClass:[BDPointView self]]) {
		// Disable user interaction so subsequent touches don't interfere with animation
		//		self.userInteractionEnabled = NO;
		//		[self animatePlacardViewToCenter];
		return;
	}		
}

@end
