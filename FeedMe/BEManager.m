//
//  BEManager.m
//  FeedMe
//
//  Created by bepid on 5/6/16.
//  Copyright © 2016 bepid. All rights reserved.
//

#import "BEManager.h"

@implementation BEManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.peerID   = [[MCPeerID alloc] initWithDisplayName:@"peerteste"];//display name must be short.
        self.sessions = [[NSMutableArray alloc] init];
        self.browser  = [[MCNearbyServiceBrowser alloc] initWithPeer:self.peerID serviceType:MC_SERVICE_TYPE];
        self.advertiser = [[MCNearbyServiceAdvertiser alloc]initWithPeer:self.peerID discoveryInfo:nil serviceType:MC_SERVICE_TYPE];
    }
    return self;
}

#pragma mark - MCNearbyServiceAdvertiserDelegate Methods
//called when the peer receive a invitation.
-(void)advertiser:(MCNearbyServiceAdvertiser *)advertiser didReceiveInvitationFromPeer:(MCPeerID *)peerID withContext:(NSData *)context invitationHandler:(void (^)(BOOL, MCSession * _Nonnull))invitationHandler{

}


#pragma mark - MCNearbyServiceBrowser Delegate Methods
//Called when I lost connection with a peer.
-(void)browser:(MCNearbyServiceBrowser *)browser lostPeer:(MCPeerID *)peerID{

}

//Called when I found a peer.
-(void)browser:(MCNearbyServiceBrowser *)browser foundPeer:(MCPeerID *)peerID withDiscoveryInfo:(NSDictionary<NSString *,NSString *> *)info{
}

#pragma mark - MCSeesionDelegate Methods
//Called when this peer receive a Data(mensage).
-(void)session:(MCSession *)session didReceiveData:(NSData *)data fromPeer:(MCPeerID *)peerID{

}

@end
