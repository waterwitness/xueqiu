.class public final Lcom/sleepycat/b/bv;
.super Lcom/sleepycat/b/bg;
.source "UniqueConstraintException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/bg;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/bv;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/bg;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bm;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sleepycat/b/bv;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/bv;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bv;)V

    return-object v0
.end method
