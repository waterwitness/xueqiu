.class public final Lcom/sleepycat/b/i/a/c;
.super Ljava/lang/Object;
.source "DesignatedPrimaryProvider.java"

# interfaces
.implements Lcom/sleepycat/b/i/a/b;


# instance fields
.field private final a:Lcom/sleepycat/b/i/c/aj;

.field private final b:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sleepycat/b/i/a/c;->a:Lcom/sleepycat/b/i/c/aj;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/a/c;->b:Ljava/util/logging/Logger;

    .line 39
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/a/c;->a:Lcom/sleepycat/b/i/c/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/a/c;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/a/c;->a:Lcom/sleepycat/b/i/c/aj;

    .line 1887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 2421
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 90
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/t;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sleepycat/b/i/a/c;->c()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sleepycat/b/i/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/i/a/c;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/a/c;->a:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Primary activated; quorum is one."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/a/c;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/a/c;->a:Lcom/sleepycat/b/i/c/aj;

    const-string v2, "Attempted unsuccessfully to activate designated primary"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method
