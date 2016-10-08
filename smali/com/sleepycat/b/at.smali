.class public final Lcom/sleepycat/b/at;
.super Lcom/sleepycat/b/aa;
.source "LogWriteException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/at;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/sleepycat/b/at;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/at;-><init>(Ljava/lang/String;Lcom/sleepycat/b/at;)V

    return-object v0
.end method
