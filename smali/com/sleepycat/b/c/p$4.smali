.class final Lcom/sleepycat/b/c/p$4;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/v;
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/g/g;

.field final synthetic b:Lcom/sleepycat/b/c/p;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/sleepycat/b/c/p$4;->b:Lcom/sleepycat/b/c/p;

    iput-object p2, p0, Lcom/sleepycat/b/c/p$4;->a:Lcom/sleepycat/b/g/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/g/av;
    .locals 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/sleepycat/b/c/p$4;->a:Lcom/sleepycat/b/g/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/p$4;->a:Lcom/sleepycat/b/g/g;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    .line 1496
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1234
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/g/a/f;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/g/g;

    move-result-object v0

    goto :goto_0
.end method
