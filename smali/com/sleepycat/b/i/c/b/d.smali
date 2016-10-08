.class final Lcom/sleepycat/b/i/c/b/d;
.super Ljava/util/LinkedHashMap;
.source "DbCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/sleepycat/b/c/h;",
        "Lcom/sleepycat/b/i/c/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/b/c;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/i/c/b/c;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/d;->a:Lcom/sleepycat/b/i/c/b/c;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/i/c/b/c;B)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/b/d;-><init>(Lcom/sleepycat/b/i/c/b/c;)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/i/c/b/e;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/d;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/d;->a:Lcom/sleepycat/b/i/c/b/c;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/c;->b(Lcom/sleepycat/b/i/c/b/c;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/d;->a:Lcom/sleepycat/b/i/c/b/c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/e;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    invoke-static {v1, v0}, Lcom/sleepycat/b/i/c/b/c;->a(Lcom/sleepycat/b/i/c/b/c;Lcom/sleepycat/b/c/i;)V

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method
