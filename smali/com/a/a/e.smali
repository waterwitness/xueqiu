.class final Lcom/a/a/e;
.super Ljava/lang/Object;
.source "CacheManager.java"


# instance fields
.field a:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/a/a/d/c;->a:I

    new-instance v2, Lcom/a/a/f;

    invoke-direct {v2, p0}, Lcom/a/a/f;-><init>(Lcom/a/a/e;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/a/a/e;->b:Ljava/util/PriorityQueue;

    .line 40
    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/a/a/d/c;->a:I

    new-instance v2, Lcom/a/a/f;

    invoke-direct {v2, p0}, Lcom/a/a/f;-><init>(Lcom/a/a/e;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/a/a/e;->a:Ljava/util/PriorityQueue;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/a/a/e;->c:Ljava/util/Vector;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/RectF;)Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 100
    new-instance v0, Lcom/a/a/c/a;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/a/a/c/a;-><init>(IILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    .line 101
    iget-object v1, p0, Lcom/a/a/e;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/c/a;

    .line 102
    invoke-virtual {v1, v0}, Lcom/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method final find(Ljava/util/PriorityQueue;Lcom/a/a/c/a;)Lcom/a/a/c/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/a/a/c/a;",
            ">;",
            "Lcom/a/a/c/a;",
            ")",
            "Lcom/a/a/c/a;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/a;

    .line 111
    invoke-virtual {v0, p2}, Lcom/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
