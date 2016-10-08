.class public final Lcom/sleepycat/b/bo;
.super Lcom/sleepycat/b/aa;
.source "ThreadInterruptedException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sleepycat/b/c/ac;->x:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/sleepycat/b/c/ac;->x:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/sleepycat/b/c/ac;->x:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/bo;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/sleepycat/b/bo;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/bo;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bo;)V

    return-object v0
.end method
