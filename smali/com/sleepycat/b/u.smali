.class public final Lcom/sleepycat/b/u;
.super Ljava/lang/Object;
.source "Durability.java"


# static fields
.field public static final a:Lcom/sleepycat/b/u;

.field public static final b:Lcom/sleepycat/b/u;

.field public static final c:Lcom/sleepycat/b/u;

.field public static final d:Lcom/sleepycat/b/u;


# instance fields
.field public final e:Lcom/sleepycat/b/w;

.field public final f:Lcom/sleepycat/b/w;

.field public final g:Lcom/sleepycat/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    .line 43
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/u;->b:Lcom/sleepycat/b/u;

    .line 56
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->c:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/u;->c:Lcom/sleepycat/b/u;

    .line 73
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->b:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/u;->d:Lcom/sleepycat/b/u;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    .line 206
    iput-object p2, p0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    .line 207
    iput-object p3, p0, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    .line 208
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sleepycat/b/u;
    .locals 4

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    .line 245
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad string format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/w;->valueOf(Ljava/lang/String;)Lcom/sleepycat/b/w;

    move-result-object v3

    .line 254
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/w;->valueOf(Ljava/lang/String;)Lcom/sleepycat/b/w;

    move-result-object v0

    .line 257
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/v;->valueOf(Ljava/lang/String;)Lcom/sleepycat/b/v;

    move-result-object v1

    .line 260
    :goto_2
    new-instance v2, Lcom/sleepycat/b/u;

    invoke-direct {v2, v3, v0, v1}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    move-object v0, v2

    goto :goto_0

    .line 254
    :cond_2
    sget-object v0, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    goto :goto_1

    .line 257
    :cond_3
    sget-object v1, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    goto :goto_2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 315
    if-ne p0, p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 319
    goto :goto_0

    .line 321
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/u;

    if-nez v2, :cond_3

    move v0, v1

    .line 322
    goto :goto_0

    .line 324
    :cond_3
    check-cast p1, Lcom/sleepycat/b/u;

    .line 325
    iget-object v2, p0, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    if-nez v2, :cond_4

    .line 326
    iget-object v2, p1, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    if-eqz v2, :cond_5

    move v0, v1

    .line 327
    goto :goto_0

    .line 329
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    iget-object v3, p1, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 330
    goto :goto_0

    .line 332
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    if-nez v2, :cond_6

    .line 333
    iget-object v2, p1, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    if-eqz v2, :cond_7

    move v0, v1

    .line 334
    goto :goto_0

    .line 336
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    iget-object v3, p1, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 337
    goto :goto_0

    .line 339
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    if-nez v2, :cond_8

    .line 340
    iget-object v2, p1, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    if-eqz v2, :cond_0

    move v0, v1

    .line 341
    goto :goto_0

    .line 343
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    iget-object v3, p1, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/w;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 306
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 308
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 310
    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/w;->hashCode()I

    move-result v0

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    invoke-virtual {v0}, Lcom/sleepycat/b/v;->hashCode()I

    move-result v0

    goto :goto_1

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/w;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/u;->e:Lcom/sleepycat/b/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/w;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/w;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    invoke-virtual {v1}, Lcom/sleepycat/b/v;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
