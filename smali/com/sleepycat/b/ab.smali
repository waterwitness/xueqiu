.class public final Lcom/sleepycat/b/ab;
.super Lcom/sleepycat/b/aa;
.source "EnvironmentLockedException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sleepycat/b/c/ac;->a:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/ab;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/sleepycat/b/ab;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/ab;-><init>(Ljava/lang/String;Lcom/sleepycat/b/ab;)V

    return-object v0
.end method
