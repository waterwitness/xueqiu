.class final Lcom/sleepycat/b/i/b/q;
.super Ljava/lang/Object;
.source "Proposer.java"


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/sleepycat/b/i/b/s;

.field d:Lcom/sleepycat/b/i/b/ai;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/q;->a:Ljava/util/Set;

    .line 428
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/q;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/sleepycat/b/i/b/q;-><init>()V

    return-void
.end method
