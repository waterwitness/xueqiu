.class final Lcom/sleepycat/b/c/bh$12;
.super Lcom/sleepycat/b/c/bj;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/m;

.field final synthetic b:Lcom/sleepycat/b/m;

.field final synthetic c:Lcom/sleepycat/b/m;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sleepycat/b/c/bh$12;->a:Lcom/sleepycat/b/m;

    iput-object p2, p0, Lcom/sleepycat/b/c/bh$12;->b:Lcom/sleepycat/b/m;

    iput-object p3, p0, Lcom/sleepycat/b/c/bh$12;->c:Lcom/sleepycat/b/m;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/bj;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sleepycat/b/c/bh$12;->a:Lcom/sleepycat/b/m;

    iget-object v1, p0, Lcom/sleepycat/b/c/bh$12;->c:Lcom/sleepycat/b/m;

    invoke-interface {p2, p1, v0, v1}, Lcom/sleepycat/b/m/d;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 289
    return-void
.end method
