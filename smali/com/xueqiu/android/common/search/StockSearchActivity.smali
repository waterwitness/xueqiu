.class public Lcom/xueqiu/android/common/search/StockSearchActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockSearchActivity.java"


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/ImageView;

.field private p:Landroid/widget/ListView;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/xueqiu/android/base/h5/b;

.field private t:Ljava/lang/String;

.field private u:Lcom/xueqiu/android/common/widget/p;

.field private v:Lcom/xueqiu/android/common/search/b;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Lcom/android/volley/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    .line 66
    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    .line 298
    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/StockSearchActivity;)Lcom/xueqiu/android/common/search/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->v:Lcom/xueqiu/android/common/search/b;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/StockSearchActivity;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 45
    .line 4347
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    .line 4351
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "799999"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4355
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 4356
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4357
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4361
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4362
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_3

    .line 4363
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    .line 4365
    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4366
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    new-instance v2, Lcom/xueqiu/android/common/search/StockSearchActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$3;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    .line 4367
    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/StockSearchActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4366
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 4368
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "search_stock_history"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4265
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4266
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    if-eqz v1, :cond_6

    .line 4267
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 5066
    iput-object v2, v1, Lcom/xueqiu/android/base/h5/b;->b:Ljava/lang/String;

    .line 4268
    const-string v1, "extra_event"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4272
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4273
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4274
    const-string v0, "extra_event_result"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4275
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 4276
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->finish()V

    .line 4277
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    if-nez v0, :cond_5

    .line 4278
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->overridePendingTransition(II)V

    .line 45
    :cond_5
    return-void

    .line 4270
    :cond_6
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/StockSearchActivity;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 45
    .line 5301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    .line 5302
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    .line 5336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 5302
    if-nez v0, :cond_0

    .line 5303
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    .line 6329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 5306
    :cond_0
    new-instance v6, Lcom/xueqiu/android/common/search/StockSearchActivity$2;

    invoke-direct {v6, p0, p0, p1}, Lcom/xueqiu/android/common/search/StockSearchActivity$2;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 5320
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 5321
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5322
    iget-object v3, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->t:Ljava/lang/String;

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 7446
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 5322
    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    :goto_0
    return-void

    .line 5325
    :cond_1
    const/16 v3, 0xa

    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 8077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    move-object v2, p1

    .line 5325
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->x:Lcom/android/volley/n;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/StockSearchActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 9331
    if-nez p1, :cond_0

    .line 9332
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 9333
    :goto_0
    return-void

    .line 9338
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9340
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9342
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b;

    .line 9343
    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/search/StockSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/search/StockSearchActivity;)Lcom/xueqiu/android/base/h5/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/search/StockSearchActivity;)V
    .locals 3

    .prologue
    .line 45
    .line 8379
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_stock_history"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/search/StockSearchActivity;)V
    .locals 4

    .prologue
    .line 45
    .line 9221
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9222
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->u:Lcom/xueqiu/android/common/widget/p;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    new-instance v3, Lcom/xueqiu/android/common/search/StockSearchActivity$11;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$11;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/p;->a(ILandroid/widget/EditText;Lcom/xueqiu/android/common/widget/r;)V

    :goto_0
    return-void

    .line 9247
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->u:Lcom/xueqiu/android/common/widget/p;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    new-instance v3, Lcom/xueqiu/android/common/search/StockSearchActivity$12;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$12;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/p;->a(ILandroid/widget/EditText;Lcom/xueqiu/android/common/widget/r;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 286
    const-string v1, "extra_event_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 288
    const-string v2, "extra_event"

    iget-object v3, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 292
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 293
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    if-nez v0, :cond_1

    .line 294
    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->overridePendingTransition(II)V

    .line 296
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0e013b

    const/4 v3, 0x5

    const v5, 0x7f0e0140

    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    const-string v0, "extra_event"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "extra_event"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/h5/b;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->s:Lcom/xueqiu/android/base/h5/b;

    .line 83
    :cond_0
    const-string v0, "extra_view_color"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "view_color_blue"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const v0, 0x7f01002d

    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->w:Landroid/graphics/drawable/Drawable;

    .line 88
    :cond_1
    :goto_0
    const-string v0, "market_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->t:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 2094
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 2095
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->p:Landroid/widget/ListView;

    .line 2097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    .line 3372
    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_stock_history"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3373
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 3374
    new-instance v2, Lcom/xueqiu/android/common/search/StockSearchActivity$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$4;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    .line 3375
    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/StockSearchActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3374
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2098
    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    .line 2099
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2100
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 2101
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-interface {v1, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2106
    :cond_2
    :goto_1
    new-instance v0, Lcom/xueqiu/android/common/search/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/search/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->v:Lcom/xueqiu/android/common/search/b;

    .line 2107
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->v:Lcom/xueqiu/android/common/search/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2108
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->v:Lcom/xueqiu/android/common/search/b;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/b;->a(Ljava/util/ArrayList;)V

    .line 2109
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$1;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2116
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->p:Landroid/widget/ListView;

    const v1, 0x7f0e0141

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 2117
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->k:Landroid/widget/ImageView;

    .line 2118
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    .line 2119
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$5;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2153
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2154
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 2155
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2157
    :cond_3
    const v1, 0x7f0e013a

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2158
    invoke-virtual {p0, v6}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2159
    const v0, 0x7f0e0728

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$6;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2168
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2169
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    :goto_2
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$7;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2184
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$8;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4200
    new-instance v0, Lcom/xueqiu/android/common/widget/p;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1, v2}, Lcom/xueqiu/android/common/widget/p;-><init>(Landroid/app/Activity;ILandroid/widget/EditText;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->u:Lcom/xueqiu/android/common/widget/p;

    .line 4201
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$9;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4212
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/search/StockSearchActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/search/StockSearchActivity$10;-><init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void

    .line 85
    :cond_4
    const-string v0, "extra_view_color"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "view_color_yellow"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const v0, 0x7f01002e

    invoke-virtual {p0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/r;->b(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->w:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 2103
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->q:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 2171
    :cond_6
    invoke-virtual {p0, v5}, Lcom/xueqiu/android/common/search/StockSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 196
    iget-object v0, p0, Lcom/xueqiu/android/common/search/StockSearchActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 197
    return-void
.end method
