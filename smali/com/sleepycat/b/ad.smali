.class public final Lcom/sleepycat/b/ad;
.super Lcom/sleepycat/b/aa;
.source "EnvironmentNotFoundException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sleepycat/b/c/ac;->b:Lcom/sleepycat/b/c/ac;

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/ad;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/aa;-><init>(Ljava/lang/String;Lcom/sleepycat/b/aa;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/sleepycat/b/ad;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/ad;-><init>(Ljava/lang/String;Lcom/sleepycat/b/ad;)V

    return-object v0
.end method
