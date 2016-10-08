.class public final Lcom/xueqiu/android/cube/a/p;
.super Landroid/widget/BaseAdapter;
.source "SearchCubeDefaultAdapter.java"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/a/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/p;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/a/p;->c:Landroid/view/LayoutInflater;

    .line 38
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    .line 5174
    iget-object v3, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 6174
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final getHeaderId(I)J
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    move v1, v0

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    .line 3174
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    .line 4174
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 42
    if-nez p2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 45
    check-cast v0, Landroid/widget/TextView;

    move v3, v2

    .line 1082
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/q;

    .line 1174
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 1082
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/q;

    .line 2174
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 1083
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr p1, v2

    .line 1084
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1086
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/q;

    .line 3166
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/q;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    .line 7174
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    .line 8174
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 74
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/q;

    .line 9174
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 77
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 96
    if-nez p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/p;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ed

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 10146
    new-instance v1, Lcom/xueqiu/android/cube/a/t;

    invoke-direct {v1}, Lcom/xueqiu/android/cube/a/t;-><init>()V

    .line 10147
    const v0, 0x7f0e00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/t;->a:Landroid/widget/ImageView;

    .line 10148
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/t;->b:Landroid/widget/TextView;

    .line 10149
    const v0, 0x7f0e0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/cube/a/t;->c:Landroid/view/View;

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/a/t;

    .line 101
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/cube/a/p;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/cube/a/r;

    .line 102
    iget-object v2, v0, Lcom/xueqiu/android/cube/a/t;->a:Landroid/widget/ImageView;

    .line 10197
    iget v3, v1, Lcom/xueqiu/android/cube/a/r;->a:I

    .line 102
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v2, v0, Lcom/xueqiu/android/cube/a/t;->b:Landroid/widget/TextView;

    .line 10205
    iget-object v3, v1, Lcom/xueqiu/android/cube/a/r;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v4

    move v5, p1

    .line 11122
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/q;

    .line 11174
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 11122
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v5, v2, :cond_1

    .line 11123
    iget-object v2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/q;

    .line 12174
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 11123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v5, v2

    .line 11124
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 11126
    :cond_1
    if-lez v5, :cond_2

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/p;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/a/q;

    .line 13174
    iget-object v2, v2, Lcom/xueqiu/android/cube/a/q;->b:Ljava/util/List;

    .line 11126
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_2

    const/4 v2, 0x1

    .line 104
    :goto_1
    if-eqz v2, :cond_3

    .line 105
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/t;->c:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_2
    new-instance v0, Lcom/xueqiu/android/cube/a/p$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/xueqiu/android/cube/a/p$1;-><init>(Lcom/xueqiu/android/cube/a/p;Lcom/xueqiu/android/cube/a/r;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-object p2

    :cond_2
    move v2, v4

    .line 11126
    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/t;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
