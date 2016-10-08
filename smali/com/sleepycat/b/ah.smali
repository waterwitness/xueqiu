.class public final Lcom/sleepycat/b/ah;
.super Lcom/sleepycat/b/bg;
.source "ForeignConstraintException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/bg;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/ah;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/bg;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bm;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/sleepycat/b/ah;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/ah;-><init>(Ljava/lang/String;Lcom/sleepycat/b/ah;)V

    return-object v0
.end method
