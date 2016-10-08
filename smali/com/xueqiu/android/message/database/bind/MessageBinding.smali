.class public Lcom/xueqiu/android/message/database/bind/MessageBinding;
.super Lcom/sleepycat/a/a/k;
.source "MessageBinding.java"


# static fields
.field private static final ENCRYPT_TIMES:I = 0x10


# instance fields
.field private secret:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xueqiu/android/message/database/bind/MessageBinding;->secret:[B

    .line 31
    return-void
.end method

.method private encryptRead(Lcom/sleepycat/a/a/l;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v0

    .line 82
    const/high16 v1, 0x200000

    if-le v0, v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "too large encrypt data length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    new-array v0, v0, [B

    .line 86
    invoke-virtual {p1, v0}, Lcom/sleepycat/a/a/l;->read([B)I

    .line 87
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xueqiu/android/message/database/bind/MessageBinding;->secret:[B

    invoke-static {v0, v2}, Lcom/snowballfinance/message/a/c;->a([B[B)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private encryptWrite(Ljava/lang/String;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/database/bind/MessageBinding;->secret:[B

    invoke-static {v0, v1}, Lcom/snowballfinance/message/a/d;->a([B[B)[B

    move-result-object v0

    .line 76
    array-length v1, v0

    invoke-virtual {p2, v1}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 77
    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->write([B)V

    .line 78
    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/xueqiu/android/message/model/Message;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Message;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Message;->setId(J)V

    .line 37
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Message;->setSequence(J)V

    .line 38
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setType(I)V

    .line 39
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setStatus(I)V

    .line 41
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->encryptRead(Lcom/sleepycat/a/a/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setText(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->encryptRead(Lcom/sleepycat/a/a/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setSummary(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Message;->setFromId(J)V

    .line 47
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setFromGroup(Z)V

    .line 48
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Message;->setToId(J)V

    .line 49
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setToGroup(Z)V

    .line 50
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->setCreatedAt(Ljava/util/Date;)V

    .line 51
    return-object v0
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 56
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 57
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 58
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSequence()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 59
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 60
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 62
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->encryptWrite(Ljava/lang/String;Lcom/sleepycat/a/a/m;)V

    .line 64
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xueqiu/android/message/database/bind/MessageBinding;->encryptWrite(Ljava/lang/String;Lcom/sleepycat/a/a/m;)V

    .line 67
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 68
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isFromGroup()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 69
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getToId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 70
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->isToGroup()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 71
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 72
    return-void
.end method
