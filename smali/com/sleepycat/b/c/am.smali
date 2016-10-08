.class final Lcom/sleepycat/b/c/am;
.super Ljava/lang/Object;
.source "INList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sleepycat/b/l/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/c/al;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/sleepycat/b/l/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sleepycat/b/l/j;

.field private d:Lcom/sleepycat/b/l/j;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/c/al;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sleepycat/b/c/am;->a:Lcom/sleepycat/b/c/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {p1}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/c/al;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/am;->b:Ljava/util/Iterator;

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/c/al;B)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/am;-><init>(Lcom/sleepycat/b/c/al;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 3147
    iget-boolean v1, v0, Lcom/sleepycat/b/l/j;->l:Z

    .line 275
    if-eqz v1, :cond_0

    .line 276
    iput-object v0, p0, Lcom/sleepycat/b/c/am;->c:Lcom/sleepycat/b/l/j;

    .line 277
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->c:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/b/c/am;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    .line 3262
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->c:Lcom/sleepycat/b/l/j;

    if-nez v0, :cond_0

    .line 3263
    invoke-direct {p0}, Lcom/sleepycat/b/c/am;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3264
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3267
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->c:Lcom/sleepycat/b/l/j;

    iput-object v0, p0, Lcom/sleepycat/b/c/am;->d:Lcom/sleepycat/b/l/j;

    .line 3268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/am;->c:Lcom/sleepycat/b/l/j;

    .line 3269
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->d:Lcom/sleepycat/b/l/j;

    .line 243
    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->d:Lcom/sleepycat/b/l/j;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/sleepycat/b/c/am;->a:Lcom/sleepycat/b/c/al;

    iget-object v1, p0, Lcom/sleepycat/b/c/am;->d:Lcom/sleepycat/b/l/j;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)Z

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/am;->d:Lcom/sleepycat/b/l/j;

    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
