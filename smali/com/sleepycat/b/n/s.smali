.class public final Lcom/sleepycat/b/n/s;
.super Lcom/sleepycat/b/n/z;
.source "PreparedTxn.java"


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;J)V
    .locals 7

    .prologue
    .line 27
    sget-object v3, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;J)V

    .line 28
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;J)Lcom/sleepycat/b/n/s;
    .locals 4

    .prologue
    .line 37
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/n/s;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sleepycat/b/n/s;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;J)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/n/s;->b(Z)V

    .line 40
    throw v0
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/n/aj;J)J
    .locals 0

    .prologue
    .line 50
    return-wide p2
.end method
