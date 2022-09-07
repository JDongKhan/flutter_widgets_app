//
//  IOSTextView.m
//  Runner
//
//  Created by JD on 2022/7/5.
//

#import "IOSTextView.h"

@implementation IOSTextView{
    int64_t _viewId;
    FlutterMethodChannel* _channel;
    UILabel * _uiLabel;
}


- (instancetype)initWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args binaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenger{
    
    NSString *text = @"iOS端UILabel";

    if ([args isKindOfClass:[NSDictionary class]]) {
        NSDictionary *params = (NSDictionary *)args;
        if([[params allKeys] containsObject:@"text"]){
            if ([[params valueForKey:@"text"] isKindOfClass:[NSString class]]) {
                text= [params valueForKey:@"text"];
            }
        }
    }
    _uiLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _uiLabel.textAlignment = NSTextAlignmentCenter;
    _uiLabel.text = text;
    _uiLabel.font = [UIFont systemFontOfSize:30];
    return self;
}

-(UIView *)view{
    return _uiLabel;
}


@end
