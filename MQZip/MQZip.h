//
//  MQZip.h
//
//  Created by 杨孟强 on 16/9/28.
//  Copyright © 2016年 杨孟强. All rights reserved.
//
/*
    依赖库 libz
 */

#import <Foundation/Foundation.h>

//本次解压/解压最大支持字节数 根据实际情况自行调整
#define MQZIP_DATA_MAX_SIZE 1024

@interface MQZip : NSObject

/*
 uncompressedData 需要压缩数据
 @return 返回zip压缩后数据
 */
+ (NSData *)compressData:(NSData *)uncompressedData;

/*
 compressedData 需要解压数据
 @return 返回zip解压后数据
 */
+ (NSData *)uncompressData:(NSData *)compressedData;

@end
