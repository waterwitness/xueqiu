.class public final Lcom/xueqiu/android/cube/a/d;
.super Landroid/widget/BaseAdapter;
.source "CubeHoldingAdapter.java"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Holding;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/xueqiu/android/cube/a/f;

.field public d:Z

.field public e:Z

.field public f:D

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Landroid/view/LayoutInflater;

.field private k:Landroid/content/Context;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/d;->i:Landroid/util/SparseArray;

    .line 60
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    .line 62
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->l:Z

    .line 64
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->e:Z

    .line 66
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/a/d;->f:D

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/d;->j:Landroid/view/LayoutInflater;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 76
    return-void
.end method

.method private a(I)D
    .locals 8

    .prologue
    .line 251
    const-wide/16 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    move-wide v4, v2

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    .line 255
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentId()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    .line 256
    iget-boolean v2, p0, Lcom/xueqiu/android/cube/a/d;->e:Z

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 258
    if-nez v2, :cond_0

    .line 259
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    add-double/2addr v2, v4

    .line 253
    :goto_1
    add-int/lit8 p1, p1, 0x1

    move-wide v4, v2

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 262
    :goto_2
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lcom/xueqiu/android/cube/a/d;->f:D

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 264
    goto :goto_1

    .line 261
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v6

    goto :goto_2

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    add-double/2addr v2, v4

    goto :goto_1

    .line 271
    :cond_3
    return-wide v4
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V
    .locals 1

    .prologue
    .line 46
    .line 2211
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2213
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a/d;->notifyDataSetChanged()V

    .line 2214
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->c:Lcom/xueqiu/android/cube/a/f;

    if-eqz v0, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->c:Lcom/xueqiu/android/cube/a/f;

    invoke-interface {v0}, Lcom/xueqiu/android/cube/a/f;->a()V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V
    .locals 1

    .prologue
    .line 46
    .line 2221
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->c:Lcom/xueqiu/android/cube/a/f;

    if-eqz v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->c:Lcom/xueqiu/android/cube/a/f;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/cube/a/f;->a(Lcom/xueqiu/android/cube/model/Holding;)V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/a/d;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Double;
    .locals 8

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 200
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 202
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 203
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 204
    if-nez v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 205
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 200
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v4

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v0

    goto :goto_2

    .line 207
    :cond_2
    return-object v3
.end method

.method public final b()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 235
    const-wide/16 v0, 0x0

    .line 236
    iget-boolean v2, p0, Lcom/xueqiu/android/cube/a/d;->e:Z

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a/d;->a()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/cube/a/d;->f:D

    div-double/2addr v0, v2

    mul-double v2, v0, v6

    .line 243
    :cond_0
    sub-double v0, v6, v2

    return-wide v0

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 240
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 241
    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getHeaderId(I)J
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/a/d;->l:Z

    if-eqz v0, :cond_0

    .line 308
    const-wide/16 v0, 0x1

    .line 311
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/a/d;->l:Z

    if-eqz v0, :cond_1

    .line 277
    if-nez p2, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0300fa

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 301
    :cond_0
    :goto_0
    return-object p2

    .line 282
    :cond_1
    if-nez p2, :cond_2

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f030115

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1400
    new-instance v1, Lcom/xueqiu/android/cube/a/e;

    invoke-direct {v1}, Lcom/xueqiu/android/cube/a/e;-><init>()V

    .line 1401
    const v0, 0x7f0e0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/e;->a:Landroid/view/View;

    .line 1402
    const v0, 0x7f0e0457

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/e;->b:Landroid/widget/TextView;

    .line 1403
    const v0, 0x7f0e0458

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/e;->c:Landroid/widget/TextView;

    .line 284
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 288
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/e;

    .line 292
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->i:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, v0, Lcom/xueqiu/android/cube/a/e;->c:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/model/Holding;

    .line 295
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/a/d;->a(I)D

    move-result-wide v2

    .line 296
    iget-object v4, v0, Lcom/xueqiu/android/cube/a/e;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v4, v0, Lcom/xueqiu/android/cube/a/e;->c:Landroid/widget/TextView;

    const-string v5, "%.2f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/e;->a:Landroid/view/View;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Holding;->getSegmentColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 101
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/xueqiu/android/cube/widget/e;

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0300fe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1379
    new-instance v1, Lcom/xueqiu/android/cube/a/g;

    invoke-direct {v1}, Lcom/xueqiu/android/cube/a/g;-><init>()V

    .line 1380
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->a:Landroid/widget/TextView;

    .line 1381
    const v0, 0x7f0e03f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->b:Landroid/widget/TextView;

    .line 1382
    const v0, 0x7f0e03fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->c:Landroid/widget/TextView;

    .line 1383
    const v0, 0x7f0e03fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->d:Landroid/view/View;

    .line 1384
    const v0, 0x7f0e03fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->e:Landroid/widget/ImageButton;

    .line 1385
    const v0, 0x7f0e03f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->j:Landroid/widget/LinearLayout;

    .line 1386
    const v0, 0x7f0e03f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->f:Landroid/view/View;

    .line 1387
    const v0, 0x7f0e03f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->g:Landroid/widget/TextView;

    .line 1388
    const v0, 0x7f0e03fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->h:Landroid/widget/TextView;

    .line 1389
    const v0, 0x7f0e03c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/g;->i:Landroid/view/View;

    .line 103
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Holding;

    .line 107
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/g;

    .line 109
    iget-object v3, v2, Lcom/xueqiu/android/cube/a/g;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, v2, Lcom/xueqiu/android/cube/a/g;->b:Landroid/widget/TextView;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v3, v2, Lcom/xueqiu/android/cube/a/g;->c:Landroid/widget/TextView;

    const-string v4, "%.2f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v8

    const/4 v7, 0x3

    invoke-static {v8, v9, v7}, Lcom/xueqiu/android/base/util/au;->a(DI)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    if-nez v1, :cond_8

    const-wide/16 v4, 0x0

    .line 113
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 114
    :goto_2
    mul-double/2addr v4, v6

    iget-wide v8, p0, Lcom/xueqiu/android/cube/a/d;->f:D

    div-double/2addr v4, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    .line 115
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->h:Landroid/widget/TextView;

    const-string v3, "%.2f%%"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v4, v5, v10}, Lcom/xueqiu/android/base/util/au;->a(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->e:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xueqiu/android/cube/a/d$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/cube/a/d$1;-><init>(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v1, Lcom/xueqiu/android/cube/a/d$2;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/cube/a/d$2;-><init>(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->e:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 142
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->d:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v5, v8}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v4, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 144
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->h:Landroid/widget/TextView;

    const-string v3, "%.2f%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->g:Landroid/widget/TextView;

    const-string v3, "%.0f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_2
    iget-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->e:Z

    if-eqz v1, :cond_e

    .line 148
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v3, v8}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    :goto_3
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v5, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->g:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->g:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v3, v2, Lcom/xueqiu/android/cube/a/g;->d:Landroid/view/View;

    iget-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    .line 155
    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/xueqiu/android/cube/a/d;->d:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 157
    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->d:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->e:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 166
    :goto_7
    iget-boolean v1, p0, Lcom/xueqiu/android/cube/a/d;->l:Z

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :cond_3
    const/4 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/Stock;

    .line 172
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getFlag()Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v4

    sget-object v5, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    if-eq v4, v5, :cond_4

    .line 173
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getFlag()Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockStatus;->description()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 176
    :cond_4
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    invoke-static {v3}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->j:Landroid/view/LayoutInflater;

    const v4, 0x7f030101

    iget-object v5, v2, Lcom/xueqiu/android/cube/a/g;->j:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, v2, Lcom/xueqiu/android/cube/a/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockLabel()Ljava/util/List;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d;->j:Landroid/view/LayoutInflater;

    const v4, 0x7f030101

    iget-object v5, v2, Lcom/xueqiu/android/cube/a/g;->j:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, v2, Lcom/xueqiu/android/cube/a/g;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 110
    :cond_6
    const-string v5, "%s %.2f(%s%.2f%%)"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_7

    const-string v3, "+"

    :goto_9
    aput-object v3, v6, v7

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const-string v3, ""

    goto :goto_9

    .line 112
    :cond_8
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    goto/16 :goto_1

    .line 113
    :cond_9
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Holding;->getVolume()D

    move-result-wide v6

    goto/16 :goto_2

    .line 149
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 153
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 154
    :cond_c
    iget-object v3, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    const/4 v5, 0x0

    .line 155
    invoke-static {v3, v5}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_5

    .line 156
    :cond_d
    iget-object v3, p0, Lcom/xueqiu/android/cube/a/d;->k:Landroid/content/Context;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 157
    invoke-static {v3, v5}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_6

    .line 161
    :cond_e
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->f:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v1, v2, Lcom/xueqiu/android/cube/a/g;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_7

    .line 190
    :cond_f
    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method
