.class final Lcom/sleepycat/b/g/o;
.super Ljava/lang/Object;
.source "FileManager.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/g/j;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final c:I


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/m;)V
    .locals 1

    .prologue
    .line 2519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2526
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    .line 2527
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/o;->b:Ljava/util/List;

    .line 2528
    sget-object v0, Lcom/sleepycat/b/b/d;->S:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/o;->c:I

    .line 2530
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/g/o;Ljava/lang/Long;)Lcom/sleepycat/b/g/j;
    .locals 1

    .prologue
    .line 2514
    .line 3533
    iget-object v0, p0, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/j;

    .line 2514
    return-object v0
.end method
