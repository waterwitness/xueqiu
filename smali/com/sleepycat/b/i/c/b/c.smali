.class public Lcom/sleepycat/b/i/c/b/c;
.super Ljava/lang/Object;
.source "DbCache.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/d;

.field final b:Lcom/sleepycat/b/c/p;

.field volatile c:I

.field d:I

.field e:J

.field private volatile g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sleepycat/b/i/c/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/c;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/p;II)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/b/c;->d:I

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/c;->e:J

    .line 67
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/c;->f:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/c;->b:Lcom/sleepycat/b/c/p;

    .line 70
    iput p3, p0, Lcom/sleepycat/b/i/c/b/c;->c:I

    .line 71
    iput p2, p0, Lcom/sleepycat/b/i/c/b/c;->g:I

    .line 72
    new-instance v0, Lcom/sleepycat/b/i/c/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/i/c/b/d;-><init>(Lcom/sleepycat/b/i/c/b/c;B)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/c;->a:Lcom/sleepycat/b/i/c/b/d;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/c;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sleepycat/b/i/c/b/c;->d:I

    return v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/c;Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/c/b/c;->a(Lcom/sleepycat/b/c/i;)V

    return-void
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/c;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sleepycat/b/i/c/b/c;->g:I

    return v0
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 100
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->v()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V

    .line 103
    :cond_0
    return-void
.end method
