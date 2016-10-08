.class public Lcom/sleepycat/b/i/b/am;
.super Ljava/lang/Object;
.source "TimebasedProposalGenerator.java"


# static fields
.field static a:I

.field private static d:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 47
    sput v0, Lcom/sleepycat/b/i/b/am;->a:I

    .line 72
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x0

    .line 81
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v0

    .line 83
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 86
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 88
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    move-object v1, v0

    .line 101
    :cond_2
    if-nez v1, :cond_3

    .line 107
    :try_start_3
    const-string v0, "000000000000000000000000000001"

    sput-object v0, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    .line 120
    :goto_2
    return-void

    .line 110
    :cond_3
    const-string v0, ""

    sput-object v0, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    .line 111
    array-length v3, v1

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_4

    aget-byte v2, v1, v0

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 114
    :cond_4
    const-string v0, "000000000000000000000000000000"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    sget-object v3, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 119
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    sget v0, Lcom/sleepycat/b/i/b/am;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sleepycat/b/i/b/am;->a:I

    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/b/am;-><init>(I)V

    .line 140
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/b/am;->c:J

    .line 131
    iput p1, p0, Lcom/sleepycat/b/i/b/am;->b:I

    .line 132
    return-void
.end method

.method public static b()Lcom/sleepycat/b/i/b/t;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/sleepycat/b/i/b/an;->b()Lcom/sleepycat/b/i/b/t;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/sleepycat/b/i/b/s;
    .locals 6

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    iget-wide v2, p0, Lcom/sleepycat/b/i/b/am;->c:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/sleepycat/b/i/b/am;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/i/b/am;->c:J

    .line 154
    :cond_0
    iput-wide v0, p0, Lcom/sleepycat/b/i/b/am;->c:J

    .line 155
    new-instance v2, Lcom/sleepycat/b/i/b/an;

    const-string v3, "%016x%s%08x"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    sget-object v1, Lcom/sleepycat/b/i/b/am;->d:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/sleepycat/b/i/b/am;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sleepycat/b/i/b/an;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
