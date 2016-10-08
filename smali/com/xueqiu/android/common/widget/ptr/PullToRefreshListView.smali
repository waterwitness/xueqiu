.class public Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
.super Lcom/xueqiu/android/common/widget/ptr/c;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/widget/ptr/c",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/xueqiu/android/common/widget/ptr/b;

.field private e:Lcom/xueqiu/android/common/widget/ptr/b;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/c;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f:Z

    .line 56
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/c;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f:Z

    .line 61
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f:Z

    .line 66
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)Lcom/xueqiu/android/common/widget/ptr/b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/xueqiu/android/common/widget/ptr/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/j;-><init>(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/c;->a(Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getHeaderLayout()Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setDisableScrollingWhileRefreshing(Z)V

    goto :goto_0
.end method

.method protected final synthetic b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v2, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 15
    .line 2123
    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v6

    .line 2124
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 2125
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2126
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getMode()I

    move-result v7

    .line 2130
    if-ne v7, v2, :cond_8

    .line 2131
    const v0, 0x7f0702a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2135
    :goto_0
    const v0, 0x7f0702a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2136
    const v0, 0x7f0702a5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2139
    if-eq v7, v2, :cond_0

    if-ne v7, v10, :cond_1

    .line 2140
    :cond_0
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2141
    const v0, 0x7f0e0050

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2142
    new-instance v0, Lcom/xueqiu/android/common/widget/ptr/b;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/ptr/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 2144
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v8, v0, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 2146
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 2147
    invoke-virtual {v6, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2149
    :cond_1
    if-eq v7, v9, :cond_2

    if-ne v7, v10, :cond_3

    .line 2150
    :cond_2
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2151
    const v0, 0x7f0e0050

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 2152
    new-instance v0, Lcom/xueqiu/android/common/widget/ptr/b;

    move-object v1, p1

    move v2, v9

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/ptr/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 2154
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v7, v0, v12, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 2156
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 2157
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2161
    :cond_3
    sget-object v0, Lcom/xueqiu/android/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2162
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2163
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v9, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 2164
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v2, :cond_4

    .line 2165
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setTextColor(I)V

    .line 2167
    :cond_4
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v2, :cond_5

    .line 2168
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setTextColor(I)V

    .line 2172
    :cond_5
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2173
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2174
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v1, :cond_6

    .line 2175
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderImage(Landroid/graphics/drawable/Drawable;)V

    .line 2176
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 2178
    :cond_6
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v1, :cond_7

    .line 2179
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderImage(Landroid/graphics/drawable/Drawable;)V

    .line 2180
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setHeaderProgress(Landroid/graphics/drawable/Drawable;)V

    .line 2185
    :cond_7
    const v0, 0x7f0e0051

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setId(I)V

    .line 15
    return-object v6

    .line 2133
    :cond_8
    const v0, 0x7f0702a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f:Z

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    new-instance v1, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView$1;-><init>(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/common/widget/ptr/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/widget/ptr/c;->f()V

    goto :goto_0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/j;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/j;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getHeaderHeight()I

    move-result v1

    .line 248
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getCurrentMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getHeaderLayout()Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v3

    .line 257
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 258
    mul-int/lit8 v1, v1, -0x1

    .line 259
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->g()Z

    move-result v0

    .line 263
    :goto_0
    iget-boolean v4, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->b:Z

    if-nez v4, :cond_1

    .line 265
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setHeaderScroll(I)V

    .line 275
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 278
    :cond_1
    invoke-super {p0}, Lcom/xueqiu/android/common/widget/ptr/c;->l()V

    .line 279
    return-void

    .line 250
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getFooterLayout()Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v3

    .line 251
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 1125
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/c;->i()Z

    move-result v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f:Z

    .line 284
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setPullToRefreshEnabled(Z)V

    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/b;->c()V

    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->c:Lcom/xueqiu/android/common/widget/ptr/h;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/ptr/h;->a()V

    .line 290
    return-void
.end method

.method public setPullLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/c;->setPullLabel(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setPullLabel(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setPullLabel(Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0, v2}, Lcom/xueqiu/android/common/widget/ptr/c;->setRefreshingInternal(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getCurrentMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 205
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getHeaderLayout()Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v3

    .line 206
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 208
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getHeaderHeight()I

    move-result v4

    add-int/2addr v0, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v2

    .line 212
    :goto_0
    iget-boolean v5, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->b:Z

    if-nez v5, :cond_2

    .line 213
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setHeaderScroll(I)V

    .line 220
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 223
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/ptr/b;->setVisibility(I)V

    .line 224
    invoke-virtual {v3}, Lcom/xueqiu/android/common/widget/ptr/b;->c()V

    .line 226
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->a(I)V

    .line 237
    :cond_1
    :goto_1
    return-void

    .line 198
    :pswitch_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getFooterLayout()Lcom/xueqiu/android/common/widget/ptr/b;

    move-result-object v4

    .line 199
    iget-object v3, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 201
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getHeaderHeight()I

    move-result v5

    sub-int/2addr v0, v5

    .line 202
    goto :goto_0

    .line 235
    :cond_2
    invoke-super {p0, v2}, Lcom/xueqiu/android/common/widget/ptr/c;->setRefreshingInternal(Z)V

    goto :goto_1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setRefreshingLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/c;->setRefreshingLabel(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setRefreshingLabel(Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setRefreshingLabel(Ljava/lang/String;)V

    .line 115
    :cond_1
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/c;->setReleaseLabel(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->d:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setReleaseLabel(Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->e:Lcom/xueqiu/android/common/widget/ptr/b;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/b;->setReleaseLabel(Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method
