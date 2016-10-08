.class public final Lcom/xueqiu/android/cube/a/a;
.super Lcom/xueqiu/android/common/a/d;
.source "CubeCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/xueqiu/android/cube/a/b;

.field public f:Lcom/xueqiu/android/cube/model/CubeCalGainType;

.field private g:Landroid/view/LayoutInflater;

.field private h:Lcom/d/a/b/d;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const v1, 0x7f020208

    .line 64
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/a;->f:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 59
    iput-boolean v2, p0, Lcom/xueqiu/android/cube/a/a;->i:Z

    .line 61
    iput-boolean v2, p0, Lcom/xueqiu/android/cube/a/a;->j:Z

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/a;->g:Landroid/view/LayoutInflater;

    .line 66
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v0

    .line 1293
    iput v1, v0, Lcom/d/a/b/e;->c:I

    .line 2270
    iput v1, v0, Lcom/d/a/b/e;->b:I

    .line 3248
    iput v1, v0, Lcom/d/a/b/e;->a:I

    .line 69
    new-instance v1, Lcom/d/a/b/c/c;

    const/high16 v2, 0x41900000    # 18.0f

    .line 70
    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 3445
    iput-object v1, v0, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 71
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/a;->h:Lcom/d/a/b/d;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 6

    .prologue
    .line 277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 279
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    :cond_0
    return-void

    .line 277
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 4093
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/a;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f0300fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4094
    new-instance v0, Lcom/xueqiu/android/cube/a/c;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/a/c;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/a;->g:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/a;->e:Lcom/xueqiu/android/cube/a/b;

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/a;->h:Lcom/d/a/b/d;

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/xueqiu/android/cube/a/c;->a(Landroid/view/View;Landroid/view/LayoutInflater;Lcom/xueqiu/android/cube/a/b;Lcom/d/a/b/d;)Lcom/xueqiu/android/cube/a/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/a/c;

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/a;->f:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    iget-boolean v3, p0, Lcom/xueqiu/android/cube/a/a;->i:Z

    iget-boolean v4, p0, Lcom/xueqiu/android/cube/a/a;->j:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xueqiu/android/cube/a/c;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/model/CubeCalGainType;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object p2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
