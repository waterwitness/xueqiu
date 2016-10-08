.class public final Lcom/sleepycat/c/a/a;
.super Ljava/lang/Object;
.source "KeyRange.java"


# static fields
.field public static final a:[B


# instance fields
.field b:Lcom/sleepycat/b/m;

.field c:Lcom/sleepycat/b/m;

.field d:Z

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/c/a/a;->a:[B

    return-void
.end method

.method public static a(Lcom/sleepycat/b/m;I)[B
    .locals 5

    .prologue
    .line 275
    .line 2197
    iget-object v1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 1282
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2410
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 1283
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1285
    if-nez v2, :cond_1

    .line 1286
    sget-object v0, Lcom/sleepycat/c/a/a;->a:[B

    goto :goto_0

    .line 1288
    :cond_1
    new-array v0, v2, [B

    .line 3382
    iget v3, p0, Lcom/sleepycat/b/m;->d:I

    .line 1289
    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[KeyRange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/c/a/a;->b:Lcom/sleepycat/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/c/a/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/c/a/a;->c:Lcom/sleepycat/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/c/a/a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sleepycat/c/a/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, " single"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
