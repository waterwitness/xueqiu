.class public final Lcom/xueqiu/android/common/a/i;
.super Landroid/widget/BaseAdapter;
.source "SearchHotsAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/model/SearchHots;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/common/a/i;->b:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/SearchHots;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 55
    :cond_0
    if-nez p2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v1, Lcom/xueqiu/android/common/a/j;

    invoke-direct {v1, v5}, Lcom/xueqiu/android/common/a/j;-><init>(B)V

    .line 58
    const v0, 0x7f0e0366

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/xueqiu/android/common/a/j;->a:Landroid/widget/RelativeLayout;

    .line 59
    const v0, 0x7f0e0367

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/a/j;->b:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0e0368

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/a/j;->c:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0e01fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/common/a/j;->d:Landroid/view/View;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, p2

    .line 67
    :goto_1
    if-nez p1, :cond_2

    .line 68
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/common/a/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 76
    :goto_2
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->b:Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, v2, Lcom/xueqiu/android/common/a/j;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xueqiu/android/common/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/SearchHots;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/SearchHots;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/i;->getCount()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_5

    .line 1090
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/i;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    .line 1094
    :goto_3
    mul-int/lit8 v0, v0, 0x3

    .line 78
    if-lt p1, v0, :cond_6

    .line 79
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->d:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    move-object v0, v1

    .line 83
    goto/16 :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/a/j;

    move-object v2, v0

    move-object v1, p2

    goto :goto_1

    .line 69
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 70
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/common/a/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 71
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 72
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/common/a/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_2

    .line 74
    :cond_4
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/xueqiu/android/common/a/i;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 1092
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/i;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_3

    .line 81
    :cond_6
    iget-object v0, v2, Lcom/xueqiu/android/common/a/j;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method
