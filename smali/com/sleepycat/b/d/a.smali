.class public final Lcom/sleepycat/b/d/a;
.super Ljava/lang/Object;
.source "Arbiter.java"


# instance fields
.field public final a:Lcom/sleepycat/b/c/ar;

.field b:Lcom/sleepycat/b/p/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:J

.field public volatile d:Z

.field public final e:Lcom/sleepycat/b/p/ai;

.field public final f:Lcom/sleepycat/b/p/z;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 46
    sget-object v1, Lcom/sleepycat/b/b/d;->am:Lcom/sleepycat/b/b/f;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/d/a;->c:J

    .line 49
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cache"

    const-string v2, "Current size, allocations, and eviction activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/a;->e:Lcom/sleepycat/b/p/ai;

    .line 50
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/a;->e:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/a;->f:Lcom/sleepycat/b/p/z;

    .line 3508
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 4299
    iget-object v0, v0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 53
    iput-object v0, p0, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 4321
    iget-wide v2, v2, Lcom/sleepycat/b/c/ar;->a:J

    .line 74
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
