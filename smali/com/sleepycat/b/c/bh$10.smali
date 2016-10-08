.class final Lcom/sleepycat/b/c/bh$10;
.super Lcom/sleepycat/b/c/bj;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/z;)V
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/bj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    .locals 1

    .prologue
    .line 231
    instance-of v0, p2, Lcom/sleepycat/b/m/c;

    if-eqz v0, :cond_0

    .line 232
    check-cast p2, Lcom/sleepycat/b/m/c;

    invoke-interface {p2, p1}, Lcom/sleepycat/b/m/c;->a(Lcom/sleepycat/b/bp;)V

    .line 234
    :cond_0
    return-void
.end method
