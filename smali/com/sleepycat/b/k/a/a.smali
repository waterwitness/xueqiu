.class public final Lcom/sleepycat/b/k/a/a;
.super Ljava/lang/Object;
.source "LogChangeSet.java"


# instance fields
.field public a:J

.field b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v0, p0, Lcom/sleepycat/b/k/a/a;->a:J

    .line 41
    iput-wide v0, p0, Lcom/sleepycat/b/k/a/a;->b:J

    .line 42
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/sleepycat/b/k/a/a;->a:J

    .line 47
    iput-wide p3, p0, Lcom/sleepycat/b/k/a/a;->b:J

    .line 48
    return-void
.end method
