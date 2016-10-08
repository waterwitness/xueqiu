.class public final Lcom/sleepycat/b/i/g/a/h;
.super Ljava/lang/Object;
.source "LDiffUtil.java"


# static fields
.field static a:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/b/i/g/a/h;->a:Ljava/security/MessageDigest;

    .line 35
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/i/g/a/h;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(ILcom/sleepycat/b/e;I)Lcom/sleepycat/b/i/g/a/a;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 73
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 74
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 76
    new-instance v6, Lcom/sleepycat/b/p/b;

    invoke-direct {v6}, Lcom/sleepycat/b/p/b;-><init>()V

    .line 79
    sget-object v0, Lcom/sleepycat/b/i/g/a/h;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 80
    new-instance v7, Lcom/sleepycat/b/i/g/a/a;

    invoke-direct {v7, p0}, Lcom/sleepycat/b/i/g/a/a;-><init>(I)V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 83
    :goto_0
    if-ge v3, p2, :cond_1

    sget-object v8, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {p1, v4, v5, v8}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v8

    sget-object v9, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v8, v9, :cond_1

    .line 87
    if-nez v3, :cond_0

    .line 1197
    iget-object v8, v4, Lcom/sleepycat/b/m;->a:[B

    .line 2064
    iput-object v8, v7, Lcom/sleepycat/b/i/g/a/a;->c:[B

    .line 2197
    iget-object v8, v5, Lcom/sleepycat/b/m;->a:[B

    .line 3072
    iput-object v8, v7, Lcom/sleepycat/b/i/g/a/a;->d:[B

    .line 93
    :cond_0
    invoke-virtual {v6}, Lcom/sleepycat/b/p/b;->reset()V

    .line 3197
    iget-object v8, v4, Lcom/sleepycat/b/m;->a:[B

    .line 4197
    iget-object v9, v4, Lcom/sleepycat/b/m;->a:[B

    .line 94
    array-length v9, v9

    invoke-virtual {v6, v8, v1, v9}, Lcom/sleepycat/b/p/b;->update([BII)V

    .line 5197
    iget-object v8, v5, Lcom/sleepycat/b/m;->a:[B

    .line 6197
    iget-object v9, v5, Lcom/sleepycat/b/m;->a:[B

    .line 95
    array-length v9, v9

    invoke-virtual {v6, v8, v1, v9}, Lcom/sleepycat/b/p/b;->update([BII)V

    .line 96
    invoke-virtual {v6}, Lcom/sleepycat/b/p/b;->getValue()J

    move-result-wide v8

    long-to-int v8, v8

    .line 97
    add-int/2addr v2, v8

    .line 98
    add-int/2addr v0, v2

    .line 100
    sget-object v8, Lcom/sleepycat/b/i/g/a/h;->a:Ljava/security/MessageDigest;

    .line 7197
    iget-object v9, v4, Lcom/sleepycat/b/m;->a:[B

    .line 100
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 101
    sget-object v8, Lcom/sleepycat/b/i/g/a/h;->a:Ljava/security/MessageDigest;

    .line 8197
    iget-object v9, v5, Lcom/sleepycat/b/m;->a:[B

    .line 101
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    int-to-long v4, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    or-long/2addr v0, v4

    .line 9080
    iput-wide v0, v7, Lcom/sleepycat/b/i/g/a/a;->e:J

    .line 108
    sget-object v0, Lcom/sleepycat/b/i/g/a/h;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 9088
    iput-object v0, v7, Lcom/sleepycat/b/i/g/a/a;->f:[B

    .line 10056
    iput v3, v7, Lcom/sleepycat/b/i/g/a/a;->b:I

    .line 110
    return-object v7
.end method
