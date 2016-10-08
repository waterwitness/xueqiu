.class public final Lcom/sleepycat/b/i/c/b/ab;
.super Ljava/lang/Object;
.source "RepNode.java"


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    iput p1, p0, Lcom/sleepycat/b/i/c/b/ab;->a:I

    .line 2176
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 2171
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/b/ab;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 2179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/sleepycat/b/i/c/b/ab;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
