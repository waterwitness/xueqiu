.class final Lcom/sleepycat/b/c/bh$8;
.super Lcom/sleepycat/b/c/bj;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->c(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/c/i;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sleepycat/b/c/bh$8;->a:Lcom/sleepycat/b/c/i;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/bj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    .locals 1

    .prologue
    .line 177
    instance-of v0, p2, Lcom/sleepycat/b/m/a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sleepycat/b/c/bh$8;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sleepycat/b/m/d;->a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;

    .line 181
    :cond_0
    return-void
.end method
