.class public Lcom/xueqiu/android/message/database/key/TalkKey;
.super Ljava/lang/Object;
.source "TalkKey.java"


# instance fields
.field public id:J

.field public isGroup:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p3, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    .line 23
    iput-wide p1, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    .line 24
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    .line 29
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    .line 30
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/xueqiu/android/message/database/key/TalkKey;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 44
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/message/database/key/TalkKey;

    iget-boolean v0, v0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    if-ne v2, v0, :cond_2

    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    check-cast p1, Lcom/xueqiu/android/message/database/key/TalkKey;

    iget-wide v4, p1, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 4

    .prologue
    .line 33
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    iget-boolean v0, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->isGroup:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    iget-wide v2, p0, Lcom/xueqiu/android/message/database/key/TalkKey;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
