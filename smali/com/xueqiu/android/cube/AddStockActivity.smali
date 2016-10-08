.class public Lcom/xueqiu/android/cube/AddStockActivity;
.super Lcom/xueqiu/android/common/b;
.source "AddStockActivity.java"


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

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->j:Lcom/android/volley/n;

    .line 54
    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->k:Ljava/util/ArrayList;

    .line 55
    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->p:Landroid/widget/ListView;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->q:Ljava/util/Set;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->r:Ljava/lang/String;

    .line 193
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/AddStockActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/AddStockActivity;Lcom/xueqiu/android/stock/model/Stock;Z)V
    .locals 2

    .prologue
    .line 5187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_stock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5188
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5189
    const-string v1, "extra_is_add"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5190
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/util/ArrayList;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 5174
    if-nez p1, :cond_1

    .line 5175
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 5176
    :cond_0
    :goto_0
    return-void

    .line 5178
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5179
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5180
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 5181
    instance-of v1, v0, Lcom/xueqiu/android/cube/a;

    if-eqz v1, :cond_0

    .line 5182
    check-cast v0, Lcom/xueqiu/android/cube/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/AddStockActivity;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->q:Ljava/util/Set;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->j:Lcom/android/volley/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->j:Lcom/android/volley/n;

    .line 2336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 149
    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->j:Lcom/android/volley/n;

    .line 3329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->j:Lcom/android/volley/n;

    .line 154
    new-instance v6, Lcom/xueqiu/android/cube/AddStockActivity$4;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/cube/AddStockActivity$4;-><init>(Lcom/xueqiu/android/cube/AddStockActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 168
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 169
    iget-object v3, p0, Lcom/xueqiu/android/cube/AddStockActivity;->r:Ljava/lang/String;

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 4450
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ak;->b(Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 169
    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->j:Lcom/android/volley/n;

    .line 170
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/AddStockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_market"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/AddStockActivity;->r:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/AddStockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_exclude_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/xueqiu/android/cube/AddStockActivity;->q:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2091
    :cond_0
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2093
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2094
    const v1, 0x7f070353

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 2095
    const v1, 0x7f0e00b2

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/AddStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2096
    new-instance v2, Lcom/xueqiu/android/cube/AddStockActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity$1;-><init>(Lcom/xueqiu/android/cube/AddStockActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    const v2, 0x7f0e0174

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/AddStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/xueqiu/android/cube/AddStockActivity;->p:Landroid/widget/ListView;

    .line 2104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xueqiu/android/cube/AddStockActivity;->k:Ljava/util/ArrayList;

    .line 2105
    new-instance v2, Lcom/xueqiu/android/cube/a;

    iget-object v3, p0, Lcom/xueqiu/android/cube/AddStockActivity;->k:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/cube/a;-><init>(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/util/List;)V

    .line 2106
    iget-object v3, p0, Lcom/xueqiu/android/cube/AddStockActivity;->p:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2107
    iget-object v2, p0, Lcom/xueqiu/android/cube/AddStockActivity;->p:Landroid/widget/ListView;

    const v3, 0x7f0e0141

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/AddStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 2109
    const v2, 0x7f0e0333

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/AddStockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 2110
    new-instance v3, Lcom/xueqiu/android/cube/AddStockActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity$2;-><init>(Lcom/xueqiu/android/cube/AddStockActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2118
    new-instance v3, Lcom/xueqiu/android/cube/AddStockActivity$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/xueqiu/android/cube/AddStockActivity$3;-><init>(Lcom/xueqiu/android/cube/AddStockActivity;Landroid/widget/Button;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2145
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const v0, 0x7f0e0008

    const v1, 0x7f070127

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020262

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 76
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 77
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e0008

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/AddStockActivity;->finish()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
