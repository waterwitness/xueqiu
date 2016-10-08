.class public Lcom/xueqiu/android/message/database/comparator/MessageComparator;
.super Ljava/lang/Object;
.source "MessageComparator.java"

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
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 28
    new-instance v2, Lcom/xueqiu/android/message/database/key/MessageKey;

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v2, p1}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>([B)V

    .line 29
    new-instance v3, Lcom/xueqiu/android/message/database/key/MessageKey;

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {v3, p2}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>([B)V

    .line 30
    iget-boolean v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-nez v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    iget-boolean v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-nez v4, :cond_2

    iget-boolean v4, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-eqz v4, :cond_2

    move v0, v1

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v0, v1

    .line 37
    goto :goto_0

    .line 39
    :cond_3
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 43
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_4

    iget-wide v4, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 46
    :cond_4
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    iget-wide v4, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_5
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    iget-wide v4, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    .line 50
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_6
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 57
    :cond_7
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_8

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_8
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 63
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v6, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_9
    iget-wide v4, v2, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v2, v3, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method
