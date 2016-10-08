.class public final Lcom/xueqiu/android/stock/e;
.super Lcom/xueqiu/android/common/c;
.source "FundRankFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;


# instance fields
.field private a:Lcom/xueqiu/android/stock/a/u;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stock/model/FundType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/xueqiu/android/stock/e;->a:Lcom/xueqiu/android/stock/a/u;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/e;->b:I

    .line 43
    iput-object v1, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/e;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/xueqiu/android/stock/e;->b:I

    return v0
.end method

.method public static a(ILandroid/content/Context;I)Lcom/xueqiu/android/stock/f;
    .locals 3

    .prologue
    const v0, 0x7f070099

    .line 166
    packed-switch p0, :pswitch_data_0

    .line 180
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/xueqiu/android/stock/f;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/f;-><init>()V

    .line 182
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/f;->c:Ljava/lang/String;

    .line 183
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/xueqiu/android/stock/f;->d:Ljava/lang/String;

    .line 184
    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/xueqiu/android/stock/f;->e:Ljava/lang/String;

    .line 185
    iput p0, v1, Lcom/xueqiu/android/stock/f;->g:I

    .line 186
    iput p2, v1, Lcom/xueqiu/android/stock/f;->a:I

    .line 187
    return-object v1

    .line 173
    :pswitch_1
    const v0, 0x7f070091

    .line 174
    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILandroid/content/Context;II)Lcom/xueqiu/android/stock/f;
    .locals 1

    .prologue
    .line 159
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/stock/e;->a(ILandroid/content/Context;I)Lcom/xueqiu/android/stock/f;

    move-result-object v0

    .line 160
    iput p3, v0, Lcom/xueqiu/android/stock/f;->b:I

    .line 161
    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    return-object p1
.end method

.method public static b(I)Lcom/xueqiu/android/stock/e;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/xueqiu/android/stock/e;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/e;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "arg_parent_type_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/e;->e(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/e;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/e;)V
    .locals 5

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 32
    .line 5102
    iget-object v2, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 5105
    iget-object v2, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 5106
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5107
    iget-object v0, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5109
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 5110
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 5111
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/FundType;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/FundType;->getType()I

    move-result v0

    aput v0, v3, v1

    .line 5110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5105
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 5114
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/e;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/e;->b:I

    new-instance v4, Lcom/xueqiu/android/stock/e$2;

    invoke-direct {v4, p0, p0, v2}, Lcom/xueqiu/android/stock/e$2;-><init>(Lcom/xueqiu/android/stock/e;Lcom/xueqiu/android/base/b/q;Ljava/util/List;)V

    .line 5610
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v3, v1, v4}, Lcom/xueqiu/android/base/b/ak;->a([IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 5147
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/e;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 32
    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/e;)Lcom/xueqiu/android/stock/a/u;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/xueqiu/android/stock/e;->a:Lcom/xueqiu/android/stock/a/u;

    return-object v0
.end method


# virtual methods
.method public final C_()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 61
    const v0, 0x7f0301b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 56
    const-string v1, "arg_parent_type_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/e;->b:I

    .line 57
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 68
    const v1, 0x7f0e064b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 70
    new-instance v1, Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/e;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/stock/a/u;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/e;->a:Lcom/xueqiu/android/stock/a/u;

    .line 71
    iget-object v1, p0, Lcom/xueqiu/android/stock/e;->a:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/stock/e;->a:Lcom/xueqiu/android/stock/a/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/e;->a:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/u;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4079
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/e;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/e;->b:I

    new-instance v2, Lcom/xueqiu/android/stock/e$1;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/stock/e$1;-><init>(Lcom/xueqiu/android/stock/e;Lcom/xueqiu/android/base/b/q;)V

    .line 4574
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/ak;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 4097
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/e;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 75
    :cond_1
    return-void
.end method
