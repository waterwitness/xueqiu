.class final Lcom/sleepycat/b/c/bh$9;
.super Lcom/sleepycat/b/c/bj;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/sleepycat/b/c/bh$9;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/bj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    .locals 1

    .prologue
    .line 198
    instance-of v0, p2, Lcom/sleepycat/b/m/a;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sleepycat/b/c/bh$9;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sleepycat/b/m/d;->a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;

    .line 203
    :cond_0
    return-void
.end method
