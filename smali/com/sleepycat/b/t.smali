.class public final Lcom/sleepycat/b/t;
.super Lcom/sleepycat/b/au;
.source "DuplicateDataException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/t;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 44
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/sleepycat/b/t;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/t;-><init>(Ljava/lang/String;Lcom/sleepycat/b/t;)V

    return-object v0
.end method
