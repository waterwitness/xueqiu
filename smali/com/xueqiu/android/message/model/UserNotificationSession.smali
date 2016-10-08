.class public Lcom/xueqiu/android/message/model/UserNotificationSession;
.super Ljava/lang/Object;
.source "UserNotificationSession.java"


# instance fields
.field private notification:Lcom/xueqiu/android/community/model/UserNotification;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:I
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getNotification()Lcom/xueqiu/android/community/model/UserNotification;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/message/model/UserNotificationSession;->notification:Lcom/xueqiu/android/community/model/UserNotification;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/xueqiu/android/message/model/UserNotificationSession;->type:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/xueqiu/android/message/model/UserNotificationSession;->unreadCount:I

    return v0
.end method

.method public setNotification(Lcom/xueqiu/android/community/model/UserNotification;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/message/model/UserNotificationSession;->notification:Lcom/xueqiu/android/community/model/UserNotification;

    .line 36
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/xueqiu/android/message/model/UserNotificationSession;->type:I

    .line 44
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/xueqiu/android/message/model/UserNotificationSession;->unreadCount:I

    .line 52
    return-void
.end method
