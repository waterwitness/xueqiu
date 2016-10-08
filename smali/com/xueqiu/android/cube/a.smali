.class final Lcom/xueqiu/android/cube/a;
.super Landroid/widget/BaseAdapter;
.source "AddStockActivity.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/AddStockActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/cube/AddStockActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/xueqiu/android/cube/a;->b:Ljava/util/List;

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 2

    .prologue
    .line 193
    .line 1271
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Lcom/xueqiu/android/cube/AddStockActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;Lcom/xueqiu/android/stock/model/Stock;Z)V

    .line 1273
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Lcom/xueqiu/android/cube/AddStockActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1278
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/a;->notifyDataSetChanged()V

    .line 193
    return-void

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/cube/AddStockActivity;->a(Lcom/xueqiu/android/cube/AddStockActivity;Lcom/xueqiu/android/stock/model/Stock;Z)V

    .line 1276
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Lcom/xueqiu/android/cube/AddStockActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 218
    if-nez p2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/AddStockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030199

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 222
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    new-instance v1, Lcom/xueqiu/android/cube/b;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/b;-><init>(Lcom/xueqiu/android/cube/a;)V

    .line 224
    iput-object p2, v1, Lcom/xueqiu/android/cube/b;->a:Landroid/view/View;

    .line 225
    const v0, 0x7f0e03eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/b;->b:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f0e03f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/b;->c:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f0e05d4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/b;->d:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0e05d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/xueqiu/android/cube/b;->e:Landroid/widget/ImageButton;

    .line 229
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/b;

    .line 233
    iget-object v1, p0, Lcom/xueqiu/android/cube/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/Stock;

    .line 234
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getFlag()Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v2

    sget-object v3, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    if-ne v2, v3, :cond_2

    .line 238
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Lcom/xueqiu/android/cube/AddStockActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->e:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 249
    :goto_1
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->e:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xueqiu/android/cube/a$1;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/cube/a$1;-><init>(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, v0, Lcom/xueqiu/android/cube/b;->a:Landroid/view/View;

    new-instance v2, Lcom/xueqiu/android/cube/a$2;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/cube/a$2;-><init>(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-object p2

    .line 240
    :cond_2
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->getFlag()Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockStatus;->description()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v2, v0, Lcom/xueqiu/android/cube/b;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_1
.end method
