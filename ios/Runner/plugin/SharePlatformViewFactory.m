//
//  SharePlatformViewFactory.m
//  Runner
//
//  Created by JD on 2022/7/5.
//

#import "SharePlatformViewFactory.h"
#import "IOSTextView.h"

@implementation SharePlatformViewFactory {
    NSObject<FlutterBinaryMessenger> *_messenger;
}

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messager {
    self = [super init];
    if (self) {
        _messenger = messager;
    }
    return self;
}

- (NSObject<FlutterMessageCodec> *)createArgsCodec {
    return [FlutterStandardMessageCodec sharedInstance];
}

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id)args {
    IOSTextView *iosTextView = [[IOSTextView alloc] initWithFrame:frame viewIdentifier:viewId arguments:args binaryMessenger:_messenger];
    return iosTextView;
}


@end
