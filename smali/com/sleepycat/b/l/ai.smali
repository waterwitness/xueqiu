.class final Lcom/sleepycat/b/l/ai;
.super Lcom/sleepycat/b/l/e;
.source "Tree.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field final synthetic f:Lcom/sleepycat/b/l/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 300
    const-class v0, Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/ai;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/l/ah;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    .line 303
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;-><init>()V

    .line 304
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/l/ah;B)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/ai;-><init>(Lcom/sleepycat/b/l/ah;)V

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/ac;[BJ)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    .line 307
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/ac;[BJB)V
    .locals 0

    .prologue
    .line 300
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/l/ai;-><init>(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/ac;[BJ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    .locals 3

    .prologue
    .line 315
    .line 1187
    iget-object v0, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 315
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 318
    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->a()V

    .line 324
    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/l/e;

    move-result-object v0

    if-eq p0, v0, :cond_0

    .line 2133
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Root changed while unlatched, dbId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2496
    iget-object v2, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 332
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 349
    sget-boolean v0, Lcom/sleepycat/b/l/ai;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 350
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/e;->a(J)V

    .line 351
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/i;J)V
    .locals 2

    .prologue
    .line 355
    sget-boolean v0, Lcom/sleepycat/b/l/ai;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;J)V

    .line 357
    return-void
.end method

.method public final a(Lcom/sleepycat/b/l/ac;)V
    .locals 1

    .prologue
    .line 337
    sget-boolean v0, Lcom/sleepycat/b/l/ai;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 338
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/l/ac;)V

    .line 339
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 343
    sget-boolean v0, Lcom/sleepycat/b/l/ai;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/ai;->f:Lcom/sleepycat/b/l/ah;

    invoke-static {v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 344
    :cond_0
    invoke-super {p0}, Lcom/sleepycat/b/l/e;->c()V

    .line 345
    return-void
.end method
