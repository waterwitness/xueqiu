.class public Lcom/sleepycat/b/c/bh;
.super Ljava/lang/Object;
.source "TriggerManager.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sleepycat/b/c/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/bh;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/bp;)Lcom/sleepycat/b/x;
    .locals 2

    .prologue
    .line 32
    .line 9095
    if-nez p0, :cond_0

    .line 9096
    const/4 v0, 0x0

    .line 9107
    :goto_0
    return-object v0

    .line 9866
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 10408
    iget-object v0, v0, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 9106
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9107
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->A()Lcom/sleepycat/b/x;

    move-result-object v0

    goto :goto_0

    .line 11870
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/bp;->b:Lcom/sleepycat/b/x;

    goto :goto_0
.end method

.method private static a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v2

    .line 329
    if-nez v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    instance-of v0, p1, Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sleepycat/b/n/z;

    invoke-virtual {p1}, Lcom/sleepycat/b/n/z;->p_()Lcom/sleepycat/b/bp;

    move-result-object v0

    move-object v1, v0

    .line 337
    :goto_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 339
    invoke-virtual {p2, v1, v0}, Lcom/sleepycat/b/c/bj;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 341
    :catch_0
    move-exception v0

    .line 6133
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 343
    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 333
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 6378
    :cond_3
    iget-boolean v0, p2, Lcom/sleepycat/b/c/bj;->d:Z

    .line 350
    if-eqz v0, :cond_0

    .line 7866
    iget-object v0, v1, Lcom/sleepycat/b/bp;->a:Lcom/sleepycat/b/n/z;

    .line 8374
    iget-object v1, v0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    if-nez v1, :cond_4

    .line 8375
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    .line 8378
    :cond_4
    iget-object v0, v0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/sleepycat/b/c/bh$5;

    invoke-direct {v0}, Lcom/sleepycat/b/c/bh$5;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 135
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 300
    sget-boolean v0, Lcom/sleepycat/b/c/bh;->a:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 302
    :cond_0
    new-instance v0, Lcom/sleepycat/b/c/bh$2;

    invoke-direct {v0, p2, p3}, Lcom/sleepycat/b/c/bh$2;-><init>(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 310
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/sleepycat/b/c/bh;->a:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 281
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/bh;->a:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_1
    new-instance v0, Lcom/sleepycat/b/c/bh$12;

    invoke-direct {v0, p2, p3, p4}, Lcom/sleepycat/b/c/bh$12;-><init>(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 291
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/sleepycat/b/c/bh$9;

    invoke-direct {v0, p2}, Lcom/sleepycat/b/c/bh$9;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 205
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Z)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/sleepycat/b/c/bh$1;

    invoke-direct {v0, p2, p2}, Lcom/sleepycat/b/c/bh$1;-><init>(ZZ)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 63
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i;Z)V
    .locals 1

    .prologue
    .line 41
    .line 4089
    iget-object v0, p1, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 41
    invoke-static {p0, v0, p2}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Z)V

    .line 42
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/q;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lcom/sleepycat/b/c/bh$3;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/c/bh$3;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bh$3;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 402
    new-instance v1, Lcom/sleepycat/b/c/bh$4;

    invoke-direct {v1, p2}, Lcom/sleepycat/b/c/bh$4;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bh$4;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 409
    instance-of v2, p0, Lcom/sleepycat/b/n/z;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/sleepycat/b/n/z;

    invoke-virtual {p0}, Lcom/sleepycat/b/n/z;->p_()Lcom/sleepycat/b/bp;

    .line 413
    :cond_0
    if-eqz p1, :cond_1

    .line 414
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/m/d;

    .line 415
    invoke-interface {v2}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_1
    if-eqz p2, :cond_2

    .line 423
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/m/d;

    .line 424
    invoke-interface {v1}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_2
    return-void
.end method

.method public static a(Lcom/sleepycat/b/n/z;)V
    .locals 3

    .prologue
    .line 216
    sget-boolean v0, Lcom/sleepycat/b/c/bh;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4386
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    .line 220
    if-nez v0, :cond_2

    .line 237
    :cond_1
    return-void

    .line 224
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 226
    new-instance v2, Lcom/sleepycat/b/c/bh$10;

    invoke-direct {v2}, Lcom/sleepycat/b/c/bh$10;-><init>()V

    invoke-static {v0, p0, v2}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/sleepycat/b/c/bh$6;

    invoke-direct {v0}, Lcom/sleepycat/b/c/bh$6;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 154
    new-instance v0, Lcom/sleepycat/b/c/bh$7;

    invoke-direct {v0}, Lcom/sleepycat/b/c/bh$7;-><init>()V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 163
    return-void
.end method

.method public static b(Lcom/sleepycat/b/n/z;)V
    .locals 3

    .prologue
    .line 246
    sget-boolean v0, Lcom/sleepycat/b/c/bh;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5386
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->H:Ljava/util/Set;

    .line 250
    if-nez v0, :cond_2

    .line 270
    :cond_1
    return-void

    .line 254
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 256
    new-instance v2, Lcom/sleepycat/b/c/bh$11;

    invoke-direct {v2, v0}, Lcom/sleepycat/b/c/bh$11;-><init>(Lcom/sleepycat/b/c/i;)V

    invoke-static {v0, p0, v2}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    goto :goto_0
.end method

.method public static c(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/sleepycat/b/c/bh$8;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/c/bh$8;-><init>(Lcom/sleepycat/b/c/i;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/bj;)V

    .line 183
    return-void
.end method
