
//  ColorTile.m
//  objective-c_hw6
//
//  Created by Eugene Zvyagin on 03.11.2023.
//

#import "ColorTile.h"

@implementation ColorTile


- (instancetype)initWithTileOrigin:(CGPoint)point andColor:(UIColor *)color {
    self = [super init];
    if (self){
        self.tileOrigin = point;
        self.tileColor = color;
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.tileColor forKey:@"color"];
    [coder encodeFloat:self.tileOrigin.x forKey:@"pointX"];
    [coder encodeFloat:self.tileOrigin.y forKey:@"pointY"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self){
        self.tileColor = [coder decodeObjectForKey:@"color"];
        float x = [coder decodeFloatForKey:@"pointX"];
        float y = [coder decodeFloatForKey:@"pointY"];
        self.tileOrigin = CGPointMake(x, y);
    }
    return self;
}

@end
