.class public final Lcom/sleepycat/b/i/g/a/d;
.super Ljava/lang/Object;
.source "LDiffConfig.java"


# instance fields
.field a:I

.field public b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/sleepycat/b/i/g/a/d;->c:I

    .line 15
    iput-boolean v1, p0, Lcom/sleepycat/b/i/g/a/d;->d:Z

    .line 16
    const/16 v0, 0x2000

    iput v0, p0, Lcom/sleepycat/b/i/g/a/d;->a:I

    .line 17
    iput-boolean v1, p0, Lcom/sleepycat/b/i/g/a/d;->e:Z

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/g/a/d;->f:I

    .line 19
    iput v1, p0, Lcom/sleepycat/b/i/g/a/d;->g:I

    .line 20
    iput-boolean v1, p0, Lcom/sleepycat/b/i/g/a/d;->b:Z

    return-void
.end method
