.class final enum Lcom/sleepycat/b/p/ad$2;
.super Lcom/sleepycat/b/p/ad;
.source "PropUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/p/ad;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/p/ad;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 3

    .prologue
    .line 1204
    sget-object v0, Lcom/sleepycat/b/p/ad;->g:Ljava/util/concurrent/TimeUnit;

    .line 216
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
