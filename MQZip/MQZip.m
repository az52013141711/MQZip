//
//  MQZip.m
//
//  Created by 杨孟强 on 16/9/28.
//  Copyright © 2016年 杨孟强. All rights reserved.
//

#import "MQZip.h"
#import <zlib.h>

@implementation MQZip

+ (NSData *)compressData:(NSData *)uncompressedData
{
    if (!uncompressedData || !uncompressedData.length) {
        return nil;
    }
    
    Bytef *source = (Bytef *)[uncompressedData bytes];
    uLongf sourceLen = uncompressedData.length;
    Bytef dest[MQZIP_DATA_MAX_SIZE] = {0};
    uLongf destLen = sizeof(dest);
    
    int state = compress(dest, &destLen, source, sourceLen);
    if (state == Z_OK && destLen > 0) {
        return [NSData dataWithBytes:dest length:destLen];
    }
    return nil;
}

+ (NSData *)uncompressData:(NSData *)compressedData
{
    if (!compressedData || !compressedData.length) {
        return nil;
    }
    
    Bytef *source = (Bytef *)[compressedData bytes];
    uLongf sourceLen = compressedData.length;
    Bytef dest[MQZIP_DATA_MAX_SIZE] = {0};
    uLongf destLen = sizeof(dest);
    
    int state = uncompress(dest, &destLen, source, sourceLen);
    if (state == Z_OK && destLen > 0) {
        return [NSData dataWithBytes:dest length:destLen];
    }
    return nil;
}

@end
