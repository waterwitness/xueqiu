.class final Lcom/sleepycat/b/i/c/t$1;
.super Lcom/sleepycat/b/i/c/w;
.source "RepGroupImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/i/c/t;->d()Ljava/util/Set;
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/t;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/t;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/sleepycat/b/i/c/t$1;->a:Lcom/sleepycat/b/i/c/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/w;-><init>(Lcom/sleepycat/b/i/c/t;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/i/c/am;)Z
    .locals 2

    .prologue
    .line 612
    .line 1208
    iget-object v0, p1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 612
    sget-object v1, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
