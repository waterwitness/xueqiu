.class public Lcom/xueqiu/android/message/database/key/MessageKey;
.super Ljava/lang/Object;
.source "MessageKey.java"


# instance fields
.field public isGroup:Z

.field public messageId:J

.field public sequenceId:J

.field public talkId:J


# direct methods
.method public constructor <init>(JJJZ)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    .line 45
    iput-wide p3, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    .line 46
    iput-wide p5, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    .line 47
    iput-boolean p7, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/message/model/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    .line 27
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    .line 28
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    .line 30
    iput-boolean v3, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    .line 33
    iput-boolean v3, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isByMyself()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    .line 36
    iput-boolean v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    .line 39
    iput-boolean v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public belongsSameTalk(Lcom/xueqiu/android/message/database/key/MessageKey;)Z
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-wide v2, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    iget-boolean v1, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/xueqiu/android/message/database/key/MessageKey;
    .locals 9

    .prologue
    .line 92
    new-instance v1, Lcom/xueqiu/android/message/database/key/MessageKey;

    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    iget-wide v4, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v6, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-boolean v8, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    invoke-direct/range {v1 .. v8}, Lcom/xueqiu/android/message/database/key/MessageKey;-><init>(JJJZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/xueqiu/android/message/database/key/MessageKey;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    check-cast p1, Lcom/xueqiu/android/message/database/key/MessageKey;

    .line 77
    iget-boolean v1, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    iget-boolean v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-ne v1, v2, :cond_0

    iget-wide v2, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    iget-wide v4, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    iget-wide v4, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p1, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    iget-wide v4, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 4

    .prologue
    .line 59
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 60
    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 61
    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 62
    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->talkId:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 63
    iget-boolean v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->sequenceId:J

    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2f

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->messageId:J

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/xueqiu/android/message/database/key/MessageKey;->isGroup:Z

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4f

    add-int/2addr v0, v1

    return v0
.end method
