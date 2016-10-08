.class public Lcom/xueqiu/android/message/model/Apply;
.super Ljava/lang/Object;
.source "Apply.java"


# instance fields
.field private createdAt:Ljava/util/Date;

.field private description:Ljava/lang/String;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private id:J

.field private joined:Z

.field private largeProfileImage:Ljava/lang/String;

.field private mediumProfileImage:Ljava/lang/String;

.field private ownerId:J

.field private screenName:Ljava/lang/String;

.field private smallProfileImage:Ljava/lang/String;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method


# virtual methods
.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Apply;->groupId:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Apply;->id:J

    return-wide v0
.end method

.method public getLargeProfileImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->largeProfileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumProfileImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->mediumProfileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Apply;->ownerId:J

    return-wide v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallProfileImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/message/model/Apply;->smallProfileImage:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/xueqiu/android/message/model/Apply;->userId:J

    return-wide v0
.end method

.method public isJoined()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/xueqiu/android/message/model/Apply;->joined:Z

    return v0
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->createdAt:Ljava/util/Date;

    .line 122
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->description:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setGroupId(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Apply;->groupId:J

    .line 82
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->groupName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Apply;->id:J

    .line 66
    return-void
.end method

.method public setJoined(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/xueqiu/android/message/model/Apply;->joined:Z

    .line 130
    return-void
.end method

.method public setLargeProfileImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->largeProfileImage:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setMediumProfileImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->mediumProfileImage:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setOwnerId(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Apply;->ownerId:J

    .line 90
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->screenName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSmallProfileImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/xueqiu/android/message/model/Apply;->smallProfileImage:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setUserId(J)V
    .locals 1

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/xueqiu/android/message/model/Apply;->userId:J

    .line 74
    return-void
.end method
