.class public final Lcom/sleepycat/b/ap;
.super Lcom/sleepycat/b/an;
.source "LockNotAvailableException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/ap;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/sleepycat/b/ap;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/ap;-><init>(Ljava/lang/String;Lcom/sleepycat/b/ap;)V

    return-object v0
.end method
