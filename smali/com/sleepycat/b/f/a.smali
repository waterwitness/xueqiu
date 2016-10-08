.class public Lcom/sleepycat/b/f/a;
.super Ljava/lang/Object;
.source "Latch.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field public final a:Lcom/sleepycat/b/p/ai;

.field private final c:Lcom/sleepycat/b/f/b;

.field private d:Ljava/lang/String;

.field private final e:Lcom/sleepycat/b/p/o;

.field private final f:Lcom/sleepycat/b/p/o;

.field private final g:Lcom/sleepycat/b/p/o;

.field private final h:Lcom/sleepycat/b/p/o;

.field private final i:Lcom/sleepycat/b/p/o;

.field private final j:Lcom/sleepycat/b/p/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/f/a;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/sleepycat/b/f/b;

    invoke-direct {v0}, Lcom/sleepycat/b/f/b;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    .line 54
    iput-object p1, p0, Lcom/sleepycat/b/f/a;->d:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Latch"

    const-string v2, "Latch characteristics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    .line 58
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/f/c;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->e:Lcom/sleepycat/b/p/o;

    .line 59
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/f/c;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->f:Lcom/sleepycat/b/p/o;

    .line 60
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/f/c;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->g:Lcom/sleepycat/b/p/o;

    .line 61
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/f/c;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->h:Lcom/sleepycat/b/p/o;

    .line 62
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/f/c;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->i:Lcom/sleepycat/b/p/o;

    .line 64
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/f/c;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/f/a;->j:Lcom/sleepycat/b/p/o;

    .line 65
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/b;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->f:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latch already held: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    :cond_0
    throw v0

    .line 101
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/b;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->g:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/b;->lock()V

    .line 109
    sget-boolean v0, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v0, :cond_2

    .line 1237
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/f/e;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 112
    :cond_3
    return-void

    .line 104
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->e:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/b;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/b;->unlock()V

    .line 179
    iget-object v1, p0, Lcom/sleepycat/b/f/a;->j:Lcom/sleepycat/b/p/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/o;->f()V

    .line 180
    sget-boolean v1, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v1, :cond_2

    .line 2246
    if-eqz p1, :cond_1

    .line 2247
    sget-object v1, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v1, p0}, Lcom/sleepycat/b/f/e;->b(Ljava/lang/Object;)Z

    move-result v1

    .line 180
    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2249
    :cond_1
    sget-object v1, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v1, p0}, Lcom/sleepycat/b/f/e;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 2250
    goto :goto_1

    .line 184
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/b;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->f:Lcom/sleepycat/b/p/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/o;->f()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latch already held: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    :cond_0
    throw v0

    .line 132
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/b;->tryLock()Z

    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    sget-boolean v1, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v1, :cond_2

    .line 2237
    sget-object v1, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v1, p0}, Lcom/sleepycat/b/f/e;->a(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/f/a;->h:Lcom/sleepycat/b/p/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/o;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :goto_0
    sget-boolean v1, Lcom/sleepycat/b/f/a;->b:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 139
    :cond_3
    return v0

    .line 137
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/f/a;->i:Lcom/sleepycat/b/p/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/o;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/f/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latch not held: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/f/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 165
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sleepycat/b/f/a;->c:Lcom/sleepycat/b/f/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
