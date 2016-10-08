.class final enum Lcom/sleepycat/b/p/ad$6;
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
    .line 242
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/p/ad;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(J)J
    .locals 3

    .prologue
    .line 244
    const-wide v0, 0x34630b8a000L

    mul-long/2addr v0, p1

    return-wide v0
.end method
