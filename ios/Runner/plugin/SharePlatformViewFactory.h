//
//  SharePlatformViewFactory.h
//  Runner
//
//  Created by JD on 2022/7/5.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface SharePlatformViewFactory : NSObject<FlutterPlatformViewFactory>

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger>*)messager;

- (NSObject<FlutterMessageCodec> *)createArgsCodec;

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args;


@end

NS_ASSUME_NONNULL_END
