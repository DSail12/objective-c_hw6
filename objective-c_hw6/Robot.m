
//  Robot.m
//  objective-c_hw6
//
//  Created by Eugene Zvyagin on 03.11.2023.
//

#import "Robot.h"

@implementation Robot
- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _x = [coder decodeIntegerForKey:@"x"];
        _y = [coder decodeIntegerForKey:@"y"];
        _name = [coder decodeObjectForKey:@"name"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeInteger:self.x forKey:@"x"];
    [coder encodeInteger:self.y forKey:@"y"];
    [coder encodeObject:self.name forKey:@"name"];
}
@end
