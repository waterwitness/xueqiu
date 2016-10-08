.class public final Lcom/xueqiu/android/common/a/p;
.super Lcom/xueqiu/android/common/a/d;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/widget/Adapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Adapter;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/xueqiu/android/common/a/p;->f:Landroid/widget/Adapter;

    .line 22
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 62
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 63
    :cond_0
    return v1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 44
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 47
    if-nez p1, :cond_0

    .line 55
    :goto_1
    return-object v0

    .line 49
    :cond_0
    if-ge p1, v2, :cond_1

    .line 50
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_1
    sub-int/2addr p1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x1

    .line 78
    iget-object v1, p0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 79
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 91
    :goto_1
    return v0

    .line 84
    :cond_0
    if-ge p1, v3, :cond_1

    .line 85
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 88
    :cond_1
    sub-int/2addr p1, v3

    .line 89
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 107
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/common/a/p;->f:Landroid/widget/Adapter;

    invoke-interface {v0, v1, v2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    :goto_1
    return-object v0

    .line 112
    :cond_0
    if-ge p1, v4, :cond_1

    .line 113
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_1
    sub-int/2addr p1, v4

    .line 117
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 118
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 119
    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x1

    .line 70
    iget-object v1, p0, Lcom/xueqiu/android/common/a/p;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 71
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_0
    return v1
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/a/p;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
