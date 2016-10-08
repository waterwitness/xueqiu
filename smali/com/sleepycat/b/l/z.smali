.class final Lcom/sleepycat/b/l/z;
.super Lcom/sleepycat/b/au;
.source "LN.java"


# direct methods
.method constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 609
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/l/z;)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 615
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 619
    new-instance v0, Lcom/sleepycat/b/l/z;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/l/z;-><init>(Ljava/lang/String;Lcom/sleepycat/b/l/z;)V

    return-object v0
.end method
