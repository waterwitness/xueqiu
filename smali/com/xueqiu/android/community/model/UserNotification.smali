.class public Lcom/xueqiu/android/community/model/UserNotification;
.super Ljava/lang/Object;
.source "UserNotification.java"


# instance fields
.field private desc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private screenName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "screenName"
    .end annotation
.end field

.field private timestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private unreadCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserNotification;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/xueqiu/android/community/model/UserNotification;->id:J

    return-wide v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserNotification;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/community/model/UserNotification;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/xueqiu/android/community/model/UserNotification;->unreadCount:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserNotification;->desc:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/xueqiu/android/community/model/UserNotification;->id:J

    .line 36
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserNotification;->screenName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/community/model/UserNotification;->timestamp:Ljava/util/Date;

    .line 44
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/xueqiu/android/community/model/UserNotification;->unreadCount:I

    .line 68
    return-void
.end method
