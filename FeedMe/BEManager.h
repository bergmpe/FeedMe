//
//  BEManager.h
//  FeedMe
//
//  Created by bepid on 5/6/16.
//  Copyright © 2016 bepid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MultipeerConnectivity/MultipeerConnectivity.h"
#define MC_SERVICE_TYPE @"feedme-discovery"


@interface BEManager : NSObject<MCNearbyServiceAdvertiserDelegate, MCNearbyServiceBrowserDelegate, MCSessionDelegate>
{
    NSString *myServiceType;
}
@property (nonatomic, strong) MCPeerID *peerID;
@property (nonatomic, strong) NSMutableArray<MCSession *> *sessions;
@property (nonatomic, strong) MCNearbyServiceBrowser      *browser;
@property (nonatomic, strong) MCNearbyServiceAdvertiser   *advertiser;


@end
