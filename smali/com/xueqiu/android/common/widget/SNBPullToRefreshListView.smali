.class public Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
.super Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;
.source "SNBPullToRefreshListView.java"


# instance fields
.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/AbsListView$OnScrollListener;

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d:Landroid/view/View$OnClickListener;

    .line 40
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 46
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->h:Landroid/view/View;

    .line 159
    new-instance v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    .line 50
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->n()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d:Landroid/view/View$OnClickListener;

    .line 40
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 46
    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->h:Landroid/view/View;

    .line 159
    new-instance v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    .line 55
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->n()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setLoadMoreProgressVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 59
    new-instance v0, Lcom/d/a/b/f/c;

    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->i:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/d/a/b/f/c;-><init>(Lcom/d/a/b/f;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->g:Ljava/lang/CharSequence;

    .line 63
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const v0, 0x7f02019b

    iput v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f:I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const v0, 0x7f02019a

    iput v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f:I

    goto :goto_0
.end method

.method private setLoadMoreProgressVisibility(I)V
    .locals 1

    .prologue
    .line 196
    const v0, 0x7f0e076c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 114
    const v0, 0x7f0e076a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 116
    const v1, 0x7f03021c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 124
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->invalidate()V

    .line 127
    :cond_1
    return-void

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b()V

    .line 218
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 219
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$4;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 256
    :goto_0
    return-void

    .line 230
    :cond_0
    const v1, 0x7f0e0141

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 231
    if-nez v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->h:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->h:Landroid/view/View;

    .line 240
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 241
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 246
    :goto_2
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {v0, v1, v6, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 248
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->invalidate()V

    .line 252
    :cond_1
    const v0, 0x7f0e018e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    const v2, 0x7f0e009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 254
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 236
    const v2, 0x7f030217

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 72
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/volley/x;

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string v0, "\u8bf7\u6c42\u670d\u52a1\u7aef\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5!"

    .line 82
    :goto_0
    const v1, 0x7f02019c

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Ljava/lang/CharSequence;I)V

    .line 83
    return-void

    .line 74
    :cond_1
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "\u8bf7\u6c42\u6ca1\u6709\u54cd\u5e94\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    goto :goto_0

    .line 76
    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/android/volley/j;

    if-eqz v0, :cond_4

    .line 77
    :cond_3
    const-string v0, "\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\u662f\u5426\u6b63\u5e38"

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0702f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 181
    const v0, 0x7f0e076a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f0e076a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->g:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Ljava/lang/CharSequence;I)V

    .line 212
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 259
    const v0, 0x7f0e0141

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 263
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-super {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 1203
    const v1, 0x7f0e076c

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1204
    if-eqz v1, :cond_0

    .line 1205
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 273
    :cond_0
    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setLoadMoreProgressVisibility(I)V

    .line 276
    :cond_1
    return-void
.end method

.method public getCustomerEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->h:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->onFinishInflate()V

    .line 88
    return-void
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-super {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->performClick()Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    return-void
.end method

.method public setCustomerEmptyView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->h:Landroid/view/View;

    .line 292
    return-void
.end method

.method public setEmptyViewDesc(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->g:Ljava/lang/CharSequence;

    .line 284
    return-void
.end method

.method public setEmptyViewImage(I)V
    .locals 0

    .prologue
    .line 279
    iput p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f:I

    .line 280
    return-void
.end method

.method public setOnMoreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$1;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->d:Landroid/view/View$OnClickListener;

    .line 98
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 156
    invoke-super {p0, v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 157
    return-void
.end method
