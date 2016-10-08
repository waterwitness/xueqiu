.class public Lcom/sleepycat/b/i/c/am;
.super Ljava/lang/Object;
.source "RepNodeImpl.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/b/x;

.field public final b:Lcom/sleepycat/b/i/o;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lcom/sleepycat/b/i/c/u;

.field h:I


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 116
    new-instance v7, Lcom/sleepycat/b/i/c/u;

    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v7, v0, v4, v5}, Lcom/sleepycat/b/i/c/u;-><init>(Lcom/sleepycat/b/p/au;J)V

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/i/c/am;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;ZZLjava/lang/String;ILcom/sleepycat/b/i/c/u;I)V

    .line 119
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/i/c/am;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;Ljava/lang/String;I)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;ZZLjava/lang/String;ILcom/sleepycat/b/i/c/u;I)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/am;->h:I

    .line 1087
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 79
    const-string v1, "$$GROUP_KEY$$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Member node ID is the reserved key value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 84
    :cond_0
    if-nez p5, :cond_1

    .line 85
    const-string v0, "The hostname argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 89
    :cond_1
    if-nez p2, :cond_2

    .line 90
    const-string v0, "The nodeType argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 94
    :cond_2
    iput-object p1, p0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 95
    iput-object p2, p0, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 96
    iput-boolean p3, p0, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 97
    iput-object p5, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    .line 98
    iput p6, p0, Lcom/sleepycat/b/i/c/am;->f:I

    .line 99
    iput-boolean p4, p0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 100
    iput p8, p0, Lcom/sleepycat/b/i/c/am;->h:I

    .line 101
    iput-object p7, p0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/e/ai;)V
    .locals 6

    .prologue
    .line 160
    .line 1678
    iget-object v1, p1, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 160
    sget-object v2, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    .line 2674
    iget-object v3, p1, Lcom/sleepycat/b/i/e/ai;->e:Ljava/lang/String;

    .line 2682
    iget v4, p1, Lcom/sleepycat/b/i/e/ai;->f:I

    .line 160
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/c/am;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;Ljava/lang/String;IB)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 150
    new-instance v1, Lcom/sleepycat/b/i/c/b/x;

    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 1099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 150
    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;I)V

    sget-object v2, Lcom/sleepycat/b/i/o;->b:Lcom/sleepycat/b/i/o;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/c/am;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;Ljava/lang/String;IB)V

    .line 152
    return-void
.end method


# virtual methods
.method public final a()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    iget v2, p0, Lcom/sleepycat/b/i/c/am;->f:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    if-ne p0, p1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 337
    goto :goto_0

    .line 339
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/c/am;

    if-nez v2, :cond_3

    move v0, v1

    .line 340
    goto :goto_0

    .line 342
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/am;

    .line 343
    iget-object v2, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 344
    iget-object v2, p1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/b/x;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 351
    goto :goto_0

    .line 6208
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 7208
    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 353
    if-eq v2, v3, :cond_7

    move v0, v1

    .line 354
    goto :goto_0

    .line 356
    :cond_7
    iget v2, p0, Lcom/sleepycat/b/i/c/am;->f:I

    iget v3, p1, Lcom/sleepycat/b/i/c/am;->f:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 357
    goto :goto_0

    .line 8174
    :cond_8
    iget-boolean v2, p0, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 9174
    iget-boolean v3, p1, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 359
    if-eq v2, v3, :cond_0

    move v0, v1

    .line 360
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 325
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/x;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sleepycat/b/i/c/am;->f:I

    add-int/2addr v0, v1

    .line 327
    mul-int/lit8 v1, v0, 0x1f

    .line 6174
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 327
    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 328
    return v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 327
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    const-string v0, "(is member)"

    .line 261
    iget-boolean v1, p0, Lcom/sleepycat/b/i/c/am;->c:Z

    if-nez v1, :cond_0

    .line 262
    const-string v0, " (not yet a durable member)"

    .line 265
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/b/i/c/am;->d:Z

    if-eqz v1, :cond_1

    .line 266
    const-string v0, " (is removed)"

    .line 269
    :cond_1
    const-string v1, "Node:%s %s:%d %s changeVersion:%d %s\n"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3197
    iget-object v4, p0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 4087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 269
    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 4215
    iget-object v4, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    .line 269
    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 4226
    iget v4, p0, Lcom/sleepycat/b/i/c/am;->f:I

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    .line 5186
    iget v3, p0, Lcom/sleepycat/b/i/c/am;->h:I

    .line 269
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    return-object v0
.end method
