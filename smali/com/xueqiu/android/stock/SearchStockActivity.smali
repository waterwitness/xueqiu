.class public Lcom/xueqiu/android/stock/SearchStockActivity;
.super Lcom/xueqiu/android/common/b;
.source "SearchStockActivity.java"


# instance fields
.field private j:Lcom/android/volley/n;
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

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->j:Lcom/android/volley/n;

    .line 38
    iput-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->k:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->p:Landroid/widget/ListView;

    .line 40
    iput-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/SearchStockActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/SearchStockActivity;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 33
    .line 3164
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3166
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 3167
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3168
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3171
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3172
    invoke-direct {p0, v1, v4}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 3173
    :goto_1
    return-void

    .line 3177
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->j:Lcom/android/volley/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->j:Lcom/android/volley/n;

    .line 3336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 3177
    if-nez v0, :cond_4

    .line 3178
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->j:Lcom/android/volley/n;

    .line 4329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 3180
    :cond_4
    iput-object v4, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->j:Lcom/android/volley/n;

    .line 3182
    new-instance v6, Lcom/xueqiu/android/stock/SearchStockActivity$7;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/stock/SearchStockActivity$7;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 3196
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/SearchStockActivity;->getApplication()Landroid/app/Application;

    .line 3197
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 3198
    const/16 v3, 0xa

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    move-object v2, p1

    .line 3198
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->j:Lcom/android/volley/n;

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/SearchStockActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/stock/SearchStockActivity;->a(Ljava/util/ArrayList;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 204
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 210
    instance-of v1, v0, Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 212
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/SearchStockActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->setContentView(I)V

    .line 2053
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2055
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2056
    const v1, 0x7f070353

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2057
    const v1, 0x7f0e00b2

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/SearchStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2058
    new-instance v2, Lcom/xueqiu/android/stock/SearchStockActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity$1;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2065
    const v2, 0x7f0e0174

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/SearchStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->p:Landroid/widget/ListView;

    .line 2066
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->k:Ljava/util/ArrayList;

    .line 2067
    new-instance v2, Lcom/xueqiu/android/common/a/f;

    iget-object v3, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->k:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/common/a/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2069
    iget-object v3, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2070
    iget-object v3, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->p:Landroid/widget/ListView;

    new-instance v4, Lcom/xueqiu/android/stock/SearchStockActivity$2;

    invoke-direct {v4, p0, v2}, Lcom/xueqiu/android/stock/SearchStockActivity$2;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/common/a/f;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2085
    const v2, 0x7f0e0333

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/SearchStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 2086
    new-instance v3, Lcom/xueqiu/android/stock/SearchStockActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity$3;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    const v3, 0x7f0e01a3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/SearchStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 2096
    new-instance v4, Lcom/xueqiu/android/stock/SearchStockActivity$4;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/xueqiu/android/stock/SearchStockActivity$4;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/ListView;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    .line 2126
    new-instance v0, Lcom/xueqiu/android/common/a/f;

    iget-object v1, p0, Lcom/xueqiu/android/stock/SearchStockActivity;->q:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/a/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2128
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2129
    new-instance v1, Lcom/xueqiu/android/stock/SearchStockActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity$5;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/common/a/f;)V

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 2144
    new-instance v2, Lcom/xueqiu/android/stock/SearchStockActivity$6;

    invoke-direct {v2, p0, p0, v0}, Lcom/xueqiu/android/stock/SearchStockActivity$6;-><init>(Lcom/xueqiu/android/stock/SearchStockActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/common/a/f;)V

    .line 2417
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/b/ak;->a(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2159
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/SearchStockActivity;->h()Landroid/app/Dialog;

    .line 49
    return-void
.end method
