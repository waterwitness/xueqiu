.class public final Lcom/sleepycat/b/aq;
.super Lcom/sleepycat/b/r;
.source "LockNotGrantedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sleepycat/b/r;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/aq;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/r;-><init>(Ljava/lang/String;Lcom/sleepycat/b/r;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/sleepycat/b/aq;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/aq;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aq;)V

    return-object v0
.end method
