.class public Lcom/sleepycat/b/i/b/z;
.super Lcom/sleepycat/b/i/c/az;
.source "Protocol.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:Lcom/sleepycat/b/i/b/s;

.field final b:Lcom/sleepycat/b/i/b/ai;

.field final synthetic d:Lcom/sleepycat/b/i/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const-class v0, Lcom/sleepycat/b/i/b/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/b/z;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sleepycat/b/i/b/z;->d:Lcom/sleepycat/b/i/b/x;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/c/az;-><init>(Lcom/sleepycat/b/i/c/ap;)V

    .line 318
    sget-boolean v0, Lcom/sleepycat/b/i/b/z;->c:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/i/b/z;->c:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 320
    :cond_1
    iput-object p2, p0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    .line 321
    iput-object p3, p0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    .line 322
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sleepycat/b/i/b/z;->d:Lcom/sleepycat/b/i/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/x;->h:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/z;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    invoke-interface {v1}, Lcom/sleepycat/b/i/b/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-interface {v1}, Lcom/sleepycat/b/i/b/ai;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-ne p0, p1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/c/az;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/b/z;

    if-nez v2, :cond_3

    move v0, v1

    .line 351
    goto :goto_0

    .line 353
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/b/z;

    .line 354
    iget-object v2, p0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    if-nez v2, :cond_4

    .line 355
    iget-object v2, p1, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    if-eqz v2, :cond_5

    move v0, v1

    .line 356
    goto :goto_0

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 359
    goto :goto_0

    .line 361
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    if-nez v2, :cond_6

    .line 362
    iget-object v2, p1, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    if-eqz v2, :cond_0

    move v0, v1

    .line 363
    goto :goto_0

    .line 365
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 366
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 335
    invoke-super {p0}, Lcom/sleepycat/b/i/c/az;->hashCode()I

    move-result v0

    .line 336
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 338
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 339
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/z;->a:Lcom/sleepycat/b/i/b/s;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/b/z;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
