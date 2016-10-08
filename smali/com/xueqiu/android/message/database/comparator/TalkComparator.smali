.class public Lcom/xueqiu/android/message/database/comparator/TalkComparator;
.super Ljava/lang/Object;
.source "TalkComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 21
    new-instance v2, Lcom/xueqiu/android/message/database/key/TalkKey;

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v2, p1}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>([B)V

    .line 22
    new-instance v3, Lcom/xueqiu/android/message/database/key/TalkKey;

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {v3, p2}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>([B)V

    .line 24
    iget-boolean v4, v2, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    if-nez v4, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 28
    :cond_1
    iget-boolean v4, v2, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    if-eqz v4, :cond_2

    move v0, v1

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 36
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    iget-wide v2, v3, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    move v0, v1

    .line 37
    goto :goto_0

    .line 40
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
