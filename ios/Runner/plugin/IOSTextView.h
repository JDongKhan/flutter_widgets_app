//
//  IOSTextView.h
//  Runner
//
//  Created by JD on 2022/7/5.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface IOSTextView : NSObject<FlutterPlatformView>

- (instancetype)initWithFrame:(CGRect)frame
                   viewIdentifier:(int64_t)viewId
                        arguments:(id _Nullable)args
                  binaryMessenger:(NSObject<FlutterBinaryMessenger>*)messenger;


@end

NS_ASSUME_NONNULL_END
