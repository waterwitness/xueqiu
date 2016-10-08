.class final Lcom/sleepycat/b/a/ad$1;
.super Ljava/lang/Object;
.source "UtilizationProfile.java"

# interfaces
.implements Lcom/sleepycat/b/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/a/ad;->a(Ljava/util/Collection;Ljava/util/Set;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/g/am;

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Lcom/sleepycat/b/c/p;

.field final synthetic d:Lcom/sleepycat/b/a/ad;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/a/ad;Lcom/sleepycat/b/g/am;Ljava/util/Collection;Lcom/sleepycat/b/c/p;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sleepycat/b/a/ad$1;->d:Lcom/sleepycat/b/a/ad;

    iput-object p2, p0, Lcom/sleepycat/b/a/ad$1;->a:Lcom/sleepycat/b/g/am;

    iput-object p3, p0, Lcom/sleepycat/b/a/ad$1;->b:Ljava/util/Collection;

    iput-object p4, p0, Lcom/sleepycat/b/a/ad$1;->c:Lcom/sleepycat/b/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;)Z
    .locals 5

    .prologue
    .line 392
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/aa;

    .line 393
    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 395
    iget-object v1, p0, Lcom/sleepycat/b/a/ad$1;->a:Lcom/sleepycat/b/g/am;

    iget-object v2, p0, Lcom/sleepycat/b/a/ad$1;->b:Ljava/util/Collection;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/c/i;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/sleepycat/b/a/ad$1;->c:Lcom/sleepycat/b/c/p;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/i;JZ)V

    .line 407
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
