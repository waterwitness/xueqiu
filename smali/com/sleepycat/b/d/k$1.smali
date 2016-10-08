.class final Lcom/sleepycat/b/d/k$1;
.super Ljava/lang/Object;
.source "SharedEvictor.java"

# interfaces
.implements Lcom/sleepycat/b/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/d/k;->d()Lcom/sleepycat/b/d/d;
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/ad;",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;>;"
        }
    .end annotation
.end field

.field b:I

.field final synthetic c:Lcom/sleepycat/b/d/k;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/d/k;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sleepycat/b/d/k$1;->c:Lcom/sleepycat/b/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/d/k$1;->a:Ljava/util/Map;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/d/k$1;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sleepycat/b/d/k$1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/sleepycat/b/d/k$1;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    iget v1, p0, Lcom/sleepycat/b/d/k$1;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/b/d/k$1;->b:I

    .line 68
    iget v1, p0, Lcom/sleepycat/b/d/k$1;->b:I

    iget-object v2, p0, Lcom/sleepycat/b/d/k$1;->c:Lcom/sleepycat/b/d/k;

    iget v2, v2, Lcom/sleepycat/b/d/k;->e:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/sleepycat/b/d/k$1;->a()V

    .line 3379
    :cond_1
    iget-object v1, p1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 72
    const-wide/16 v2, -0x1

    invoke-virtual {v1, p2, v2, v3, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sleepycat/b/d/k$1;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/c/ad;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4379
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 83
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method
