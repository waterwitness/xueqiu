.class public final Lcom/xueqiu/android/stock/d/a;
.super Ljava/lang/Object;
.source "QuotesCenterItemPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/stock/b/b;


# instance fields
.field public a:Lrx/j;

.field b:Lcom/xueqiu/android/stock/b/c;

.field public c:Lcom/xueqiu/android/stock/c/w;

.field d:I

.field e:I

.field f:Z

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/tactic/d/c;",
            ">;"
        }
    .end annotation
.end field

.field k:Lorg/json/JSONObject;

.field l:Lorg/json/JSONObject;

.field private m:Lcom/xueqiu/android/base/b/r;

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/b/c;I)V
    .locals 2
    .param p1    # Lcom/xueqiu/android/stock/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 68
    iput-boolean v0, p0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/d/a;->j:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 80
    iput p2, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    check-cast v0, Lcom/xueqiu/android/stock/c/w;

    iput-object v0, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    .line 82
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/r;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    .line 84
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    .line 4017
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/base/b/r;->a:Z

    .line 85
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    sget-object v1, Lcom/android/volley/o;->c:Lcom/android/volley/o;

    .line 4033
    iput-object v1, v0, Lcom/xueqiu/android/base/b/r;->c:Lcom/android/volley/o;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/d/a;)V
    .locals 2

    .prologue
    .line 57
    .line 9661
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 9662
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    if-nez v0, :cond_2

    .line 9664
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/d/a;->f:Z

    if-eqz v0, :cond_2

    .line 9665
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/b/c;->E_()V

    .line 9673
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 9674
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->g:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;)V

    .line 9677
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 9678
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->h:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/b/c;->b(Ljava/util/ArrayList;)V

    .line 9679
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/List;)V

    .line 9683
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->k:Lorg/json/JSONObject;

    iget v1, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/d/a;->a(Lorg/json/JSONObject;I)V

    .line 9684
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->l:Lorg/json/JSONObject;

    iget v1, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/d/a;->b(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9667
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 57
    :cond_2
    return-void

    .line 9686
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 641
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 643
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 644
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/d/a;->a(I)V

    .line 647
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    if-ne v0, v1, :cond_1

    .line 7137
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 7138
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const-string v3, "SW2014"

    iget-object v4, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    new-instance v5, Lcom/xueqiu/android/stock/d/a$2;

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {v5, p0, v2}, Lcom/xueqiu/android/stock/d/a$2;-><init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;)V

    .line 7618
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    const/4 v2, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ak;->a(IILjava/lang/String;Lcom/xueqiu/android/base/b/r;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 8162
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 8163
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    new-instance v3, Lcom/xueqiu/android/stock/d/a$3;

    iget-object v4, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {v3, p0, v4}, Lcom/xueqiu/android/stock/d/a$3;-><init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;)V

    .line 8372
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->n:Lcom/xueqiu/android/base/b/al;

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/b/al;->a(Lcom/xueqiu/android/base/b/r;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 652
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    .line 9272
    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/stock/d/a;->a(II)V

    .line 653
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/xueqiu/android/stock/d/a;->c()V

    .line 635
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6186
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6188
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 6189
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/d/a$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/d/a$4;-><init>(Lcom/xueqiu/android/stock/d/a;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->i(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 6215
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 6216
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "us"

    new-instance v4, Lcom/xueqiu/android/stock/d/a$5;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/stock/d/a$5;-><init>(Lcom/xueqiu/android/stock/d/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->a(IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 638
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "symbol"

    aput-object v1, v0, v3

    const-string v1, "current"

    aput-object v1, v0, v6

    const-string v1, "change"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "percentage"

    aput-object v2, v0, v1

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    if-ne p1, v3, :cond_1

    .line 93
    const-string v2, "SH000001"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v2, "SZ399001"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v2, "SZ399006"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    :goto_0
    iget v2, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 110
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v6, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    new-instance v5, Lcom/xueqiu/android/stock/d/a$1;

    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {v5, p0, v0, v1}, Lcom/xueqiu/android/stock/d/a$1;-><init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;Ljava/util/List;)V

    .line 4402
    iget-object v0, v7, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;Ljava/util/List;ZZLcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    .line 133
    return-void

    .line 96
    :cond_1
    if-ne p1, v5, :cond_2

    .line 97
    const-string v2, "HKHSI"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-string v2, "HKHSCEI"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-string v2, "HKHSCCI"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    if-ne p1, v6, :cond_3

    .line 101
    const-string v2, "DJI30"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v2, "QQQ"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v2, "SP500"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_3
    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    .line 105
    const-string v2, "OC899002"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v2, "OC899001"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 277
    new-instance v1, Lcom/xueqiu/android/stock/d/a$7;

    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    check-cast v0, Lcom/xueqiu/android/stock/c/w;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/xueqiu/android/stock/d/a$7;-><init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;II)V

    .line 314
    iget v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/d/a;->e:I

    .line 315
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->m:Lcom/xueqiu/android/base/b/r;

    .line 4479
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/xueqiu/android/base/b/ak;->a(ILcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;I)Lcom/xueqiu/android/base/b/x;

    .line 316
    return-void
.end method

.method public final a(Lorg/json/JSONObject;I)V
    .locals 10

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x2

    const/16 v9, 0x51

    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 358
    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/b/c;->a()V

    .line 363
    if-ne p2, v2, :cond_2

    .line 5320
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5321
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5322
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5325
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 5326
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0xd

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 5329
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5330
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5331
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5334
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 5335
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0xe

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 5338
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5339
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5340
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 5341
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0xf

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 5344
    const-string v0, "4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5345
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5346
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 5347
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0x10

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702bb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 5350
    const-string v0, "5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5351
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5352
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5353
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 5354
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v9}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_2
    if-eq p2, v1, :cond_3

    if-ne p2, v3, :cond_a

    .line 369
    :cond_3
    if-ne p2, v1, :cond_4

    .line 371
    const-string v0, "5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "result"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "stocks"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 372
    new-instance v5, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v6, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v6}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v5, v6}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 373
    iget-object v5, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v6, 0x7f0702d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    const/16 v6, 0xa

    iget-object v7, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v6, v5, v7}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v6

    .line 375
    iget-object v7, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v9}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v7, v0, v6, v5}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 378
    :cond_4
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "result"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "ranks"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 379
    new-instance v5, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v6, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v6}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v5, v6}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 382
    if-ne p2, v1, :cond_6

    move v0, v1

    .line 387
    :goto_1
    iget-object v6, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v7, 0x7f0702c4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v7}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v6

    .line 388
    iget-object v7, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v5, v0}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v8, 0x7f0702c4

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v0, v6, v5}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 390
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "result"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "ranks"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 391
    new-instance v5, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v6, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v6}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v5, v6}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v5, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 393
    if-ne p2, v1, :cond_7

    move v0, v2

    .line 398
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v6, 0x7f0702c3

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 399
    iget-object v6, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v5, v0}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v7, 0x7f0702c3

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v0, v2, v5}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 402
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v5, 0x7f0702cd

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 407
    if-ne p2, v1, :cond_8

    move v0, v3

    .line 412
    :goto_3
    iget-object v6, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v6

    .line 413
    iget-object v7, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v2, v0}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v7, v0, v6, v5}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 416
    const-string v0, "4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 417
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v5, 0x7f0702b9

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 421
    if-ne p2, v1, :cond_9

    move v0, v4

    .line 426
    :goto_4
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 427
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v2, v0}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v1, v5}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 450
    :cond_5
    :goto_5
    const/4 v0, 0x7

    if-ne p2, v0, :cond_b

    .line 451
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 452
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 454
    const/16 v2, 0x48

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 455
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x48

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 457
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    const/16 v2, 0x47

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 461
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x47

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 463
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 464
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/stock/d/a$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/d/a$8;-><init>(Lcom/xueqiu/android/stock/d/a;)V

    .line 465
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/d/a$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 464
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 466
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    const/16 v2, 0x49

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 468
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x49

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertAhQuoteToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :cond_6
    if-ne p2, v3, :cond_10

    .line 385
    const/16 v0, 0x15

    goto/16 :goto_1

    .line 395
    :cond_7
    if-ne p2, v3, :cond_f

    .line 396
    const/16 v0, 0x16

    goto/16 :goto_2

    .line 409
    :cond_8
    if-ne p2, v3, :cond_e

    .line 410
    const/16 v0, 0x17

    goto/16 :goto_3

    .line 423
    :cond_9
    if-ne p2, v3, :cond_d

    .line 424
    const/16 v0, 0x18

    goto/16 :goto_4

    .line 428
    :cond_a
    const/4 v0, 0x5

    if-ne p2, v0, :cond_5

    .line 429
    const-string v0, "4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 430
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 431
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 432
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->formatNameForBuyBack(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 433
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0x2c

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 435
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 437
    const/16 v1, 0x29

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0x29

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702b6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 440
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 441
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 442
    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 443
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 445
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 446
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 447
    const/16 v1, 0x2b

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0x2b

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 469
    :cond_b
    const/16 v0, 0x8

    if-ne p2, v0, :cond_c

    .line 470
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 471
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    const/16 v2, 0x4a

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 474
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x4a

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 476
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 477
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 479
    const/16 v2, 0x4b

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 480
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x4b

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 482
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 483
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    const/16 v2, 0x4c

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 486
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x4c

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 488
    const-string v0, "4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 489
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    const/16 v2, 0x4d

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 492
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x4d

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 493
    :cond_c
    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 494
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 495
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v9, v1, v2}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 498
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v9}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 500
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 501
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    const/16 v2, 0x52

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 504
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x52

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 506
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 507
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 509
    const/16 v2, 0x53

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 510
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x53

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 512
    const-string v0, "4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    const/16 v2, 0x54

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 516
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0x54

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v0, v4

    goto/16 :goto_4

    :cond_e
    move v0, v3

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto/16 :goto_2

    :cond_10
    move v0, v1

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public final b(Lorg/json/JSONObject;I)V
    .locals 8

    .prologue
    const/16 v4, 0xb

    const/16 v7, 0x9

    const/4 v6, 0x6

    const/4 v3, 0x5

    const/4 v5, 0x1

    .line 560
    if-nez p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/stock/b/c;->a()V

    .line 565
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a;->k:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, p2}, Lcom/xueqiu/android/stock/d/a;->a(Lorg/json/JSONObject;I)V

    .line 566
    if-ne p2, v5, :cond_2

    .line 568
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 569
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/StockRank;->parseAmountAndTurnoverRateRankResult(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 573
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 576
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 577
    invoke-static {v0, v5}, Lcom/xueqiu/android/stock/model/StockRank;->parseAmountAndTurnoverRateRankResult(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v6, v1, v2}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 581
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v6}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 584
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseNewIpoRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v7, v1, v2}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 589
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v7}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 5522
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ranks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5523
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5525
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 5526
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702c4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 5529
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ranks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5530
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/PortFolioParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/PortFolioParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5532
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v3, 0x7f0702c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v1

    .line 5533
    iget-object v2, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v4, 0x7f0702c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 5550
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5551
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUSPreIpoRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5553
    iget-object v1, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    const v2, 0x7f0702cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5554
    const/16 v2, 0xb4

    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->n:Landroid/content/Context;

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/stock/l;->a(ILjava/lang/String;Landroid/content/Context;)Lcom/xueqiu/android/stock/m;

    move-result-object v2

    .line 5555
    iget-object v3, p0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    const/16 v4, 0xb4

    invoke-static {v0, v4}, Lcom/xueqiu/android/stock/model/StockRank;->convertToStockRank(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0, v2, v1}, Lcom/xueqiu/android/stock/b/c;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final refresh()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/d/a;->f:Z

    .line 657
    invoke-direct {p0}, Lcom/xueqiu/android/stock/d/a;->c()V

    .line 658
    return-void
.end method
