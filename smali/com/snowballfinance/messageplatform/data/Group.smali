.class public Lcom/snowballfinance/messageplatform/data/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private allowInviteUser:Ljava/lang/Boolean;

.field private count:Ljava/lang/Integer;

.field private emptyName:Ljava/lang/Boolean;

.field private id:Ljava/lang/Long;

.field private isPublic:Ljava/lang/Boolean;

.field private joined:Ljava/lang/Boolean;

.field private limitCount:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private ownerId:Ljava/lang/Long;

.field private profileImageUrl:Ljava/lang/String;

.field private truncated:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowInviteUser()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->allowInviteUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEmptyName()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->emptyName:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJoined()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->joined:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLimitCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->limitCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->ownerId:Ljava/lang/Long;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncated()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/Group;->truncated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowInviteUser(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->allowInviteUser:Ljava/lang/Boolean;

    .line 114
    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->count:Ljava/lang/Integer;

    .line 98
    return-void
.end method

.method public setEmptyName(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->emptyName:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->id:Ljava/lang/Long;

    .line 50
    return-void
.end method

.method public setIsPublic(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->isPublic:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method public setJoined(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->joined:Ljava/lang/Boolean;

    .line 74
    return-void
.end method

.method public setLimitCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->limitCount:Ljava/lang/Integer;

    .line 106
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOwnerId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->ownerId:Ljava/lang/Long;

    .line 58
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->profileImageUrl:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setTruncated(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/Group;->truncated:Ljava/lang/Boolean;

    .line 66
    return-void
.end method
