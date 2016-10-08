.class final Lcom/sleepycat/b/i/c/b/ai$2;
.super Lcom/sleepycat/b/i/c/b/ak;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/i/c/b/ai;
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/b/ai;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/ai;Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ai$2;->a:Lcom/sleepycat/b/i/c/b/ai;

    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/b/i/c/b/ak;-><init>(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/c/ad;)V

    return-void
.end method


# virtual methods
.method final a(JJ)Z
    .locals 1

    .prologue
    .line 1216
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
