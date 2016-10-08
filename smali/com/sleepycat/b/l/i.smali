.class public final Lcom/sleepycat/b/l/i;
.super Ljava/lang/Object;
.source "Generation.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/b/l/i;->a:J

    return-void
.end method

.method static a()J
    .locals 4

    .prologue
    .line 14
    sget-wide v0, Lcom/sleepycat/b/l/i;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/sleepycat/b/l/i;->a:J

    return-wide v0
.end method
