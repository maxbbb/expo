/**
 * Copyright (c) 2015-present, Horcrux.
 * All rights reserved.
 *
 * This source code is licensed under the MIT-style license found in the
 * LICENSE file in the root directory of this source tree.
 */
#import "ABI34_0_0RNSVGMask.h"
#import "ABI34_0_0RNSVGPainter.h"
#import "ABI34_0_0RNSVGBrushType.h"
#import "ABI34_0_0RNSVGNode.h"

@implementation ABI34_0_0RNSVGMask

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    return nil;
}

- (void)parseReference
{
    self.dirty = false;
    [self.svgView defineMask:self maskName:self.name];
}

- (void)setX:(ABI34_0_0RNSVGLength *)x
{
    if ([x isEqualTo:_x]) {
        return;
    }
    
    _x = x;
    [self invalidate];
}

- (void)setY:(ABI34_0_0RNSVGLength *)y
{
    if ([y isEqualTo:_y]) {
        return;
    }
    
    _y = y;
    [self invalidate];
}

- (void)setMaskwidth:(ABI34_0_0RNSVGLength *)maskwidth
{
    if ([maskwidth isEqualTo:_maskwidth]) {
        return;
    }
    
    _maskwidth = maskwidth;
    [self invalidate];
}

- (void)setMaskheight:(ABI34_0_0RNSVGLength *)maskheight
{
    if ([maskheight isEqualTo:_maskheight]) {
        return;
    }
    
    _maskheight = maskheight;
    [self invalidate];
}

- (void)setMaskUnits:(ABI34_0_0RNSVGUnits)maskUnits
{
    if (maskUnits == _maskUnits) {
        return;
    }
    
    _maskUnits = maskUnits;
    [self invalidate];
}

- (void)setMaskContentUnits:(ABI34_0_0RNSVGUnits)maskContentUnits
{
    if (maskContentUnits == _maskContentUnits) {
        return;
    }
    
    _maskContentUnits = maskContentUnits;
    [self invalidate];
}

- (void)setMaskTransform:(CGAffineTransform)maskTransform
{
    _maskTransform = maskTransform;
    [self invalidate];
}

@end

