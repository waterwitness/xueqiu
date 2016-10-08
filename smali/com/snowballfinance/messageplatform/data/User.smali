.class public Lcom/snowballfinance/messageplatform/data/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SYSTEM_USER:Lcom/snowballfinance/messageplatform/data/User;

.field public static robotIds:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x33486b50df957e1aL

.field private static testUserIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private areaCode:Ljava/lang/Integer;

.field private city:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private followersCount:Ljava/lang/Integer;

.field private friendsCount:Ljava/lang/Integer;

.field private gender:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private profileImageUrl:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private statusCount:Ljava/lang/Integer;

.field private type:Lcom/snowballfinance/messageplatform/data/UserType;

.field private verified:Ljava/lang/Boolean;

.field private verifiedType:Lcom/snowballfinance/messageplatform/data/VerifiedType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    new-instance v0, Lcom/snowballfinance/messageplatform/data/User;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/data/User;-><init>()V

    .line 25
    sput-object v0, Lcom/snowballfinance/messageplatform/data/User;->SYSTEM_USER:Lcom/snowballfinance/messageplatform/data/User;

    const-string v1, "\u7cfb\u7edf\u7528\u6237"

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/User;->setScreenName(Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/snowballfinance/messageplatform/data/User;->SYSTEM_USER:Lcom/snowballfinance/messageplatform/data/User;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/Predef;->SYSTEM_USER_ID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/User;->setId(Ljava/lang/Long;)V

    .line 27
    sget-object v0, Lcom/snowballfinance/messageplatform/data/User;->SYSTEM_USER:Lcom/snowballfinance/messageplatform/data/User;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/UserType;->SERVICE_ACCOUNT:Lcom/snowballfinance/messageplatform/data/UserType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/User;->setType(Lcom/snowballfinance/messageplatform/data/UserType;)V

    .line 207
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Long;

    const-wide v2, 0x241545d1cL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide v2, 0x25160405aL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    const-wide v2, 0x14d59a1c5L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    const-wide v2, 0xba82eb4eL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    const-wide v2, 0x16fc7a180L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-wide v4, 0xc722b3e6L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-wide v4, 0x227aa676cL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-wide v4, 0x163299ab3L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-wide v4, 0x111e7afd1L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-wide/32 v4, 0x49d0619e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-wide v4, 0x2259a162bL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-wide v4, 0xa29025c8L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-wide/32 v4, 0x7490215c

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-wide v4, 0x228c2e7c4L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-wide/32 v4, 0x48134a10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-wide v4, 0x1ece01200L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/User;->testUserIds:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/Long;

    const-wide v2, 0x16b0343f4L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-wide v2, 0x1e5f3b9b4L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    const-wide v2, 0xc204f2e4L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v8

    const-wide v2, 0x11fdaaa54L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v9

    const-wide/32 v2, 0x63e8e158

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x5

    const-wide/32 v4, 0x69ede97e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-wide v4, 0x193e8a5f8L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-wide v4, 0x145e379caL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-wide v4, 0x151acf909L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-wide v4, 0x982a77f6L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-wide v4, 0xfbefe6f2L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-wide v4, 0x18d5d42aaL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-wide v4, 0x1cf977871L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-wide v4, 0x211d1ae38L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-wide v4, 0x2540be3ffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-wide v4, 0x1da8519faL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-wide v4, 0x15e9276a6L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-wide/32 v4, 0x682221f2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/User;->robotIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getTestUserIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/snowballfinance/messageplatform/data/User;->testUserIds:Ljava/util/Set;

    return-object v0
.end method

.method public static isTestUser(Ljava/lang/Long;)Z
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/snowballfinance/messageplatform/data/User;->testUserIds:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setTestUserIds(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    sput-object p0, Lcom/snowballfinance/messageplatform/data/User;->testUserIds:Ljava/util/Set;

    .line 94
    return-void
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->areaCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowersCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->followersCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFriendsCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->friendsCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->statusCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/snowballfinance/messageplatform/data/UserType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->type:Lcom/snowballfinance/messageplatform/data/UserType;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVerifiedType()Lcom/snowballfinance/messageplatform/data/VerifiedType;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/data/User;->verifiedType:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    return-object v0
.end method

.method public setAreaCode(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->areaCode:Ljava/lang/Integer;

    .line 166
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->city:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->description:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->domain:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->email:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setFollowersCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->followersCount:Ljava/lang/Integer;

    .line 174
    return-void
.end method

.method public setFriendsCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->friendsCount:Ljava/lang/Integer;

    .line 182
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->gender:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->id:Ljava/lang/Long;

    .line 62
    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->profileImageUrl:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->province:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->screenName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setStatusCount(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->statusCount:Ljava/lang/Integer;

    .line 190
    return-void
.end method

.method public setType(Lcom/snowballfinance/messageplatform/data/UserType;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->type:Lcom/snowballfinance/messageplatform/data/UserType;

    .line 78
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->verified:Ljava/lang/Boolean;

    .line 150
    return-void
.end method

.method public setVerifiedType(Lcom/snowballfinance/messageplatform/data/VerifiedType;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/snowballfinance/messageplatform/data/User;->verifiedType:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User{screenName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/User;->screenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/User;->type:Lcom/snowballfinance/messageplatform/data/UserType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/User;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verifiedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/data/User;->verifiedType:Lcom/snowballfinance/messageplatform/data/VerifiedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
