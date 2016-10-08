.class public Lcom/sleepycat/b/i/ab;
.super Ljava/lang/Object;
.source "StateChangeEvent.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field final a:Lcom/sleepycat/b/i/u;

.field final b:J

.field private final d:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sleepycat/b/i/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/ab;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/ab;->b:J

    .line 44
    sget-boolean v0, Lcom/sleepycat/b/i/ab;->c:Z

    if-nez v0, :cond_0

    .line 1099
    iget v0, p2, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 44
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/i/u;->d:Lcom/sleepycat/b/i/u;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " masterId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2099
    iget v2, p2, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/ab;->a:Lcom/sleepycat/b/i/u;

    .line 46
    iput-object p2, p0, Lcom/sleepycat/b/i/ab;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 47
    return-void
.end method
