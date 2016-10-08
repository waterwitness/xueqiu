.class final Lcom/sleepycat/b/h/k;
.super Ljava/lang/Object;
.source "LevelRecorder.java"


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sleepycat/b/h/k;->a:I

    .line 115
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sleepycat/b/h/k;->b:I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/h/k;->c:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sleepycat/b/h/k;-><init>()V

    return-void
.end method
