.class public Lcom/xueqiu/android/stock/c/w;
.super Lcom/xueqiu/android/base/k;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stock/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/k",
        "<",
        "Lcom/xueqiu/android/stock/d/a;",
        ">;",
        "Lcom/xueqiu/android/stock/b/c;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private ak:Landroid/support/v7/widget/RecyclerView;

.field private al:Landroid/support/v7/widget/RecyclerView;

.field private am:Landroid/view/ViewGroup;

.field private an:Lcom/xueqiu/android/stock/a/x;

.field private ao:Lcom/xueqiu/android/stock/a/u;

.field private ap:Lcom/xueqiu/android/common/widget/z;

.field b:I

.field c:Landroid/view/View;

.field d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private f:Lcom/xueqiu/android/base/util/ar;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/stock/c/w;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/xueqiu/android/base/k;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/stock/a/x;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/stock/a/u;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ao:Lcom/xueqiu/android/stock/a/u;

    return-object v0
.end method

.method public static b(I)Lcom/xueqiu/android/stock/c/w;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/xueqiu/android/stock/c/w;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/w;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v2, "arg_page_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/w;->e(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/common/widget/z;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/base/c;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->a:Lcom/xueqiu/android/base/c;

    return-object v0
.end method

.method private u()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 351
    iget v1, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final D_()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/xueqiu/android/common/widget/z;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/widget/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    new-instance v1, Lcom/xueqiu/android/stock/c/w$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/w$2;-><init>(Lcom/xueqiu/android/stock/c/w;)V

    .line 7086
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/z;->a:Lcom/xueqiu/android/common/widget/aa;

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    new-instance v1, Lcom/xueqiu/android/stock/c/w$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/w$3;-><init>(Lcom/xueqiu/android/stock/c/w;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/z;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->show()V

    .line 172
    return-void
.end method

.method public final E_()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 380
    return-void
.end method

.method public final K_()V
    .locals 8

    .prologue
    .line 401
    invoke-super {p0}, Lcom/xueqiu/android/base/k;->K_()V

    .line 403
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/w;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->a:Lcom/xueqiu/android/base/c;

    move-object v7, v0

    check-cast v7, Lcom/xueqiu/android/stock/d/a;

    .line 15597
    iget-object v0, v7, Lcom/xueqiu/android/stock/d/a;->a:Lrx/j;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/xueqiu/android/stock/d/a;->a:Lrx/j;

    invoke-interface {v0}, Lrx/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15598
    iget-object v0, v7, Lcom/xueqiu/android/stock/d/a;->a:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 15601
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/stock/d/a$9;

    invoke-direct {v1, v7}, Lcom/xueqiu/android/stock/d/a$9;-><init>(Lcom/xueqiu/android/stock/d/a;)V

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, v7, Lcom/xueqiu/android/stock/d/a;->a:Lrx/j;

    .line 406
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v4, 0x7f0e05cd

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/base/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    if-nez v0, :cond_6

    .line 178
    const v0, 0x7f03014a

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    const v1, 0x7f0e0175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    .line 181
    const v0, 0x7f03014b

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->h:Landroid/widget/LinearLayout;

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v1, Lcom/xueqiu/android/stock/c/w$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/w$4;-><init>(Lcom/xueqiu/android/stock/c/w;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnRefreshListener(Lcom/xueqiu/android/common/widget/ptr/h;)V

    .line 7213
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/w;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7231
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301c5

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 7232
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v9, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 7234
    iget v1, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 7235
    const v1, 0x7f0e067d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7216
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 7243
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301c3

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 7244
    const v1, 0x7f0e0678

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/w$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/w$5;-><init>(Lcom/xueqiu/android/stock/c/w;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7256
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v9, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 7270
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030191

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7271
    const v1, 0x7f0e05cf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/w;->ak:Landroid/support/v7/widget/RecyclerView;

    .line 7272
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/w$6;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/stock/c/w$6;-><init>(Lcom/xueqiu/android/stock/c/w;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7289
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->ak:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/k;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/k;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/aa;)V

    .line 7290
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v9, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 8260
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030190

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8261
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v9, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 8262
    iget-object v4, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    .line 9169
    const v1, 0x7f0e05cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9171
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 9172
    iget-object v1, v4, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v1

    .line 9173
    iget-object v2, v4, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v2, v6}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 9174
    iget-object v6, v4, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    const/high16 v7, 0x428c0000    # 70.0f

    invoke-static {v6, v7}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v6

    int-to-float v7, v5

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 9175
    sub-int/2addr v1, v2

    sub-int/2addr v1, v6

    div-int/lit8 v6, v1, 0x6

    move v2, v3

    .line 9177
    :goto_0
    if-ge v2, v5, :cond_4

    .line 9178
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 9179
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 9181
    if-nez v2, :cond_1

    .line 9182
    invoke-virtual {v1, v3, v3, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 9190
    :goto_1
    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9191
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9192
    new-instance v1, Lcom/xueqiu/android/stock/a/x$3;

    invoke-direct {v1, v4, v2}, Lcom/xueqiu/android/stock/a/x$3;-><init>(Lcom/xueqiu/android/stock/a/x;I)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9177
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 9183
    :cond_1
    add-int/lit8 v8, v5, -0x1

    if-ne v2, v8, :cond_2

    .line 9184
    invoke-virtual {v1, v6, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 9186
    :cond_2
    invoke-virtual {v1, v6, v3, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 7220
    :cond_3
    iget v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 9294
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030192

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->am:Landroid/view/ViewGroup;

    .line 9295
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->am:Landroid/view/ViewGroup;

    const v1, 0x7f0e05d0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->al:Landroid/support/v7/widget/RecyclerView;

    .line 9296
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/w$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/w$7;-><init>(Lcom/xueqiu/android/stock/c/w;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9302
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->al:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/k;

    invoke-direct {v1, v3}, Landroid/support/v7/widget/k;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/aa;)V

    .line 9303
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->am:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v9, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 10266
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v9, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 190
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->ao:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    const-string v0, "quote"

    .line 193
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/w;->b(Ljava/lang/String;)V

    .line 197
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    return-object v0

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ao:Lcom/xueqiu/android/stock/a/u;

    .line 14078
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/u;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14079
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14080
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/u;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/xueqiu/android/base/k;->a(Landroid/os/Bundle;)V

    .line 96
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->f:Lcom/xueqiu/android/base/util/ar;

    .line 4564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 97
    if-eqz v0, :cond_0

    .line 5564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 98
    const-string v1, "arg_page_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    .line 101
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 102
    const v0, 0x7f07029c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/w;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/w;->a(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 106
    const v0, 0x7f070243

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/w;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/w;->a(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    new-instance v0, Lcom/xueqiu/android/stock/a/x;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/stock/a/x;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    .line 110
    new-instance v0, Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/a/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ao:Lcom/xueqiu/android/stock/a/u;

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lrx/a/b/a;->b(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/w$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/w$1;-><init>(Lcom/xueqiu/android/stock/c/w;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/w;->a(Lrx/j;)V

    .line 122
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/base/k;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 204
    iget v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.UPDATE_UNREAD_COUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    const v1, 0x7f0e0681

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 309
    iget-object v6, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    .line 11117
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 11118
    :cond_0
    return-void

    .line 11121
    :cond_1
    const/4 v1, 0x3

    new-array v7, v1, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0e067b

    .line 11122
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const v2, 0x7f0e067c

    .line 11123
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const v2, 0x7f0e067d

    .line 11124
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v7, v1

    .line 11127
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v5, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 11128
    aget-object v8, v7, v5

    .line 11129
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 11130
    const v1, 0x7f0e067e

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11131
    const v2, 0x7f0e067f

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11132
    const v3, 0x7f0e0680

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 11134
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11135
    iget v9, v6, Lcom/xueqiu/android/stock/a/x;->b:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 11136
    const v9, 0x7f070228

    invoke-static {v9}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 11137
    if-lez v9, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 11138
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 11141
    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11142
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v4, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11143
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v1, v10, v12

    if-lez v1, :cond_3

    const-string v1, "+"

    .line 11144
    :goto_1
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, "%s%.2f   %s%.2f%%"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    .line 11146
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11

    const/4 v1, 0x3

    .line 11148
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v1

    .line 11144
    invoke-static {v4, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11149
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11151
    iget-object v1, v6, Lcom/xueqiu/android/stock/a/x;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11152
    iget-object v1, v6, Lcom/xueqiu/android/stock/a/x;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11154
    new-instance v1, Lcom/xueqiu/android/stock/a/x$2;

    invoke-direct {v1, v6, v0}, Lcom/xueqiu/android/stock/a/x$2;-><init>(Lcom/xueqiu/android/stock/a/x;Lcom/xueqiu/android/stock/model/StockQuote;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11127
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 11143
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public final a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/StockRank;",
            ">;",
            "Lcom/xueqiu/android/stock/m;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ao:Lcom/xueqiu/android/stock/a/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/stock/a/u;->a(Ljava/util/ArrayList;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ak:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->ak:Landroid/support/v7/widget/RecyclerView;

    .line 12221
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 12222
    :cond_0
    :goto_0
    return-void

    .line 12224
    :cond_1
    new-instance v2, Lcom/xueqiu/android/stock/a/y;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/xueqiu/android/stock/a/y;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 12225
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    .line 12338
    iget-object v0, v2, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    goto :goto_0
.end method

.method public final synthetic b()Lcom/xueqiu/android/base/c;
    .locals 2

    .prologue
    .line 57
    .line 16347
    new-instance v0, Lcom/xueqiu/android/stock/d/a;

    iget v1, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/stock/d/a;-><init>(Lcom/xueqiu/android/stock/b/c;I)V

    .line 57
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    if-eqz v0, :cond_0

    .line 410
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {p1}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->d:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 412
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/a;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->a(Landroid/view/View;)V

    .line 414
    :cond_0
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/IndustryInStock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->g:Landroid/widget/ListView;

    const v1, 0x7f0e067a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    iget-object v6, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    .line 12061
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 12062
    :cond_0
    return-void

    .line 12065
    :cond_1
    const/4 v1, 0x3

    new-array v7, v1, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0e067b

    .line 12066
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const v2, 0x7f0e067c

    .line 12067
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const v2, 0x7f0e067d

    .line 12068
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v7, v1

    .line 12071
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v5, v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 12072
    aget-object v8, v7, v5

    .line 12073
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/IndustryInStock;

    .line 12074
    const v1, 0x7f0e0213

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12075
    const v2, 0x7f0e0676

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12076
    const v3, 0x7f0e0618

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 12077
    const v4, 0x7f0e0677

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 12079
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12081
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, "%.2f%%"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getPercent()Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12082
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getPercent()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    .line 12083
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "+"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12085
    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12087
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getTopStockName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12089
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%.2f%%"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getTopStockPercent()Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12090
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getTopStockPercent()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v3, v10, v12

    if-lez v3, :cond_3

    .line 12091
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12093
    :cond_3
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v9, "%.2f   %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getTopStockCurrent()Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-static {v3, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12094
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12096
    iget-object v1, v6, Lcom/xueqiu/android/stock/a/x;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getPercent()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12097
    iget-object v1, v6, Lcom/xueqiu/android/stock/a/x;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/IndustryInStock;->getTopStockPercent()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12099
    new-instance v1, Lcom/xueqiu/android/stock/a/x$1;

    invoke-direct {v1, v6, v0}, Lcom/xueqiu/android/stock/a/x$1;-><init>(Lcom/xueqiu/android/stock/a/x;Lcom/xueqiu/android/stock/model/IndustryInStock;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12071
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/tactic/d/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->al:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->am:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->am:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w;->an:Lcom/xueqiu/android/stock/a/x;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/w;->al:Landroid/support/v7/widget/RecyclerView;

    .line 13230
    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    .line 13231
    :cond_1
    :goto_0
    return-void

    .line 13234
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/s;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13235
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/s;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/a/aa;

    .line 13240
    :goto_1
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/a/aa;->refresh(Ljava/util/List;)V

    goto :goto_0

    .line 13237
    :cond_3
    new-instance v0, Lcom/xueqiu/android/stock/a/aa;

    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/a/aa;-><init>(Landroid/content/Context;)V

    .line 13238
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/s;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lcom/xueqiu/android/base/k;->d()V

    .line 394
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/w;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/stock/d/a;

    .line 14628
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->a:Lrx/j;

    invoke-interface {v0}, Lrx/j;->b()V

    .line 397
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 4

    .prologue
    .line 126
    invoke-super {p0}, Lcom/xueqiu/android/base/k;->o()V

    .line 128
    iget v0, p0, Lcom/xueqiu/android/stock/c/w;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 130
    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 133
    const-string v1, "extra_need_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/w;->a(Landroid/content/Intent;)V

    .line 137
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/w;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->ap:Lcom/xueqiu/android/common/widget/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/stock/d/a;

    .line 6245
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/d/a$6;

    iget-object v3, v0, Lcom/xueqiu/android/stock/d/a;->c:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {v2, v0, v3}, Lcom/xueqiu/android/stock/d/a$6;-><init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/b/ai;->d(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 143
    :cond_2
    return-void
.end method
