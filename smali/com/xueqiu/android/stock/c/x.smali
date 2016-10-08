.class public Lcom/xueqiu/android/stock/c/x;
.super Lcom/xueqiu/android/common/c;
.source "StockDetailFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/l;
.implements Lcom/xueqiu/android/community/l;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private aA:Z

.field private aB:I

.field private aC:Lcom/xueqiu/android/community/a/ak;

.field private aD:I

.field private aE:I

.field private aF:Lcom/xueqiu/android/common/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/t",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field

.field private aG:Lcom/xueqiu/android/common/widget/j;

.field private ak:Lcom/xueqiu/android/stock/c/y;

.field private al:Lcom/xueqiu/android/stock/c/y;

.field private am:Lcom/xueqiu/android/stock/c/y;

.field private an:Lcom/xueqiu/android/community/widget/i;

.field private ao:Ljava/lang/String;

.field private ap:Landroid/widget/FrameLayout;

.field private volatile aq:Z

.field private ar:Landroid/view/ViewGroup;

.field private as:Landroid/view/View;

.field private at:Lcom/xueqiu/android/trade/c/e;

.field private au:Landroid/widget/RelativeLayout;

.field private av:Z

.field private aw:Lcom/xueqiu/android/common/widget/i;

.field private ax:Z

.field private ay:Z

.field private az:Z

.field b:Lcom/xueqiu/android/stock/model/StockQuote;

.field public c:Lcom/xueqiu/android/stock/c/t;

.field public d:Z

.field private e:I

.field private f:I

.field private g:Lcom/xueqiu/android/stock/c/y;

.field private h:Lcom/xueqiu/android/stock/c/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/stock/c/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 132
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 135
    iput v3, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    .line 136
    iput v3, p0, Lcom/xueqiu/android/stock/c/x;->f:I

    .line 138
    new-instance v0, Lcom/xueqiu/android/stock/c/y;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/c/y;-><init>(B)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->g:Lcom/xueqiu/android/stock/c/y;

    .line 139
    new-instance v0, Lcom/xueqiu/android/stock/c/y;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/c/y;-><init>(B)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->h:Lcom/xueqiu/android/stock/c/y;

    .line 140
    new-instance v0, Lcom/xueqiu/android/stock/c/y;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/c/y;-><init>(B)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ak:Lcom/xueqiu/android/stock/c/y;

    .line 141
    new-instance v0, Lcom/xueqiu/android/stock/c/y;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/c/y;-><init>(B)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->al:Lcom/xueqiu/android/stock/c/y;

    .line 142
    new-instance v0, Lcom/xueqiu/android/stock/c/y;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/c/y;-><init>(B)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->am:Lcom/xueqiu/android/stock/c/y;

    .line 144
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 146
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->ao:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 151
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->d:Z

    .line 153
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    .line 155
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->aq:Z

    .line 157
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    .line 161
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    .line 163
    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->au:Landroid/widget/RelativeLayout;

    .line 165
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->av:Z

    .line 169
    iput-boolean v4, p0, Lcom/xueqiu/android/stock/c/x;->ax:Z

    .line 171
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    .line 173
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->az:Z

    .line 175
    iput-boolean v4, p0, Lcom/xueqiu/android/stock/c/x;->aA:Z

    .line 1035
    iput v3, p0, Lcom/xueqiu/android/stock/c/x;->aD:I

    .line 1036
    iput v3, p0, Lcom/xueqiu/android/stock/c/x;->aE:I

    .line 1038
    new-instance v0, Lcom/xueqiu/android/stock/c/x$4;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/x$4;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aF:Lcom/xueqiu/android/common/t;

    .line 1275
    new-instance v0, Lcom/xueqiu/android/stock/c/x$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/c/x$5;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aG:Lcom/xueqiu/android/common/widget/j;

    return-void
.end method

.method static synthetic A(Lcom/xueqiu/android/stock/c/x;)V
    .locals 4

    .prologue
    const v2, 0x7f0e05ec

    const/4 v3, 0x0

    .line 111
    .line 28948
    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 28950
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    .line 28951
    if-eqz v0, :cond_0

    .line 28952
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28955
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/c/x;->b(I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v0

    .line 28956
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/xueqiu/android/stock/c/y;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/y;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 28958
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->F()V

    .line 28959
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    .line 28960
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->H()V

    .line 28966
    :goto_0
    return-void

    .line 28962
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->F()V

    .line 28963
    invoke-direct {p0, v3}, Lcom/xueqiu/android/stock/c/x;->a(Z)V

    goto :goto_0

    .line 28967
    :cond_2
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->I()V

    .line 28968
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->a()Z

    .line 28969
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->b(Z)V

    .line 28970
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/widget/i;->a(Z)V

    .line 28971
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->c()V

    .line 28973
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 29393
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 28974
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b()V

    .line 28975
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e()V

    .line 28977
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic B(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/a/ak;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aC:Lcom/xueqiu/android/community/a/ak;

    return-object v0
.end method

.method private C()V
    .locals 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03014d

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method static synthetic C(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->I()V

    return-void
.end method

.method static synthetic D(Lcom/xueqiu/android/stock/c/x;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private D()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 243
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->G()V

    .line 245
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    const v1, 0x7f0701ee

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    const v2, 0x7f070570

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ao:Ljava/lang/String;

    .line 250
    const v0, 0x7f0e051e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 252
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 253
    const v1, 0x7f0e005a

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 255
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->i()Landroid/support/v4/a/q;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v3

    .line 258
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->i()Landroid/support/v4/a/q;

    move-result-object v1

    const-string v4, "quote_fragment_tag"

    invoke-virtual {v1, v4}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/c/t;

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 259
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 5087
    new-instance v4, Lcom/xueqiu/android/stock/c/t;

    invoke-direct {v4}, Lcom/xueqiu/android/stock/c/t;-><init>()V

    .line 5088
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5089
    const-string v6, "extra_portfolio"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5090
    invoke-virtual {v4, v5}, Lcom/xueqiu/android/stock/c/t;->e(Landroid/os/Bundle;)V

    .line 260
    iput-object v4, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 261
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    const-string v5, "quote_fragment_tag"

    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    .line 262
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    instance-of v1, v1, Lcom/xueqiu/android/common/b;

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/b;

    .line 5275
    iget-boolean v1, v1, Lcom/xueqiu/android/common/b;->n:Z

    .line 263
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v3}, Landroid/support/v4/a/ac;->d()I

    .line 271
    :cond_0
    :goto_0
    const v1, 0x7f0e051f

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/x;->au:Landroid/widget/RelativeLayout;

    .line 272
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->i()Landroid/support/v4/a/q;

    move-result-object v1

    const-string v3, "order_fragment_tag"

    invoke-virtual {v1, v3}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/trade/c/e;

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    .line 274
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 276
    const-string v3, "arg_scode"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v3, "arg_stock_name"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, "arg_symbol"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v3, "arg_type"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v3, "arg_is_lite"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->g(Landroid/os/Bundle;)Lcom/xueqiu/android/trade/c/e;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    .line 282
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    new-instance v3, Lcom/xueqiu/android/stock/c/x$7;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/stock/c/x$7;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    .line 6151
    iput-object v3, v1, Lcom/xueqiu/android/trade/c/e;->ak:Lcom/xueqiu/android/trade/a;

    .line 334
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->i()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    const v3, 0x7f0e0520

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    const-string v5, "order_fragment_tag"

    .line 335
    invoke-virtual {v1, v3, v4, v5}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 340
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 341
    invoke-virtual {v1, v2, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 343
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const v3, 0x7f0301a5

    invoke-static {v2, v3, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/xueqiu/android/stock/c/x;->as:Landroid/view/View;

    .line 344
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->as:Landroid/view/View;

    const v3, 0x7f0e060c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 345
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    invoke-direct {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/view/ViewGroup;)V

    .line 348
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->as:Landroid/view/View;

    invoke-virtual {v1, v2, v8, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 350
    new-instance v1, Lcom/xueqiu/android/community/widget/i;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->aF:Lcom/xueqiu/android/common/t;

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/community/widget/i;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 6409
    const/16 v1, 0xa

    iput v1, v0, Lcom/xueqiu/android/common/r;->f:I

    .line 352
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    new-instance v1, Lcom/xueqiu/android/stock/c/x$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/x$8;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 385
    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    new-instance v1, Lcom/xueqiu/android/stock/c/x$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/x$9;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 415
    new-instance v0, Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aC:Lcom/xueqiu/android/community/a/ak;

    .line 416
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aC:Lcom/xueqiu/android/community/a/ak;

    sget-object v1, Lcom/xueqiu/android/stock/c/x;->a:Ljava/lang/String;

    .line 6962
    iput-object v1, v0, Lcom/xueqiu/android/community/a/ak;->i:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aC:Lcom/xueqiu/android/community/a/ak;

    .line 7165
    iput-object p0, v0, Lcom/xueqiu/android/community/a/ak;->g:Lcom/xueqiu/android/community/l;

    .line 418
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aC:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 7393
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 420
    new-instance v1, Lcom/xueqiu/android/stock/c/x$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/x$10;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnPullToRefreshEventListener(Lcom/xueqiu/android/common/widget/ptr/g;)V

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/x$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/x$11;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->u()V

    .line 465
    return-void

    .line 267
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/a/ac;->d()I

    goto/16 :goto_0
.end method

.method private E()V
    .locals 12

    .prologue
    .line 510
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 511
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v2, 0x7f0e05d8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 512
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v3, 0x7f0e05d9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 514
    iget-boolean v3, p0, Lcom/xueqiu/android/stock/c/x;->av:Z

    if-nez v3, :cond_7

    .line 515
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 9197
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 515
    if-nez v3, :cond_0

    .line 516
    const-string v3, "%s:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v6}, Lcom/xueqiu/android/stock/model/StockQuote;->getExchange()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v6}, Lcom/xueqiu/android/stock/model/StockQuote;->getCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 522
    const-string v0, ""

    .line 523
    const-string v3, "1"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    const v0, 0x7f070198

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 10197
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 531
    if-nez v3, :cond_2

    .line 532
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getRedeemType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getRedeemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 539
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    :goto_2
    return-void

    .line 525
    :cond_3
    const-string v3, "2"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 526
    const v0, 0x7f070184

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_4
    const-string v3, "3"

    iget-object v4, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    const v0, 0x7f070375

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 536
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 541
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 545
    :cond_7
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v3

    invoke-static {v4, v5, v3}, Lcom/xueqiu/android/base/util/as;->a(DI)Ljava/lang/String;

    move-result-object v4

    .line 546
    const-string v5, "%s%s"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_8

    const-string v3, "+"

    :goto_3
    aput-object v3, v6, v7

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 547
    invoke-virtual {v7}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v8

    iget-object v7, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v7}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v7

    invoke-static {v8, v9, v7}, Lcom/xueqiu/android/base/util/as;->a(DI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 546
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 548
    const-string v5, "%.2f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v8}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 549
    const-string v6, "%s(%s %s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v3, v7, v4

    const/4 v3, 0x2

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 546
    :cond_8
    const-string v3, ""

    goto :goto_3
.end method

.method private F()V
    .locals 3

    .prologue
    .line 983
    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->f:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 985
    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->f:I

    invoke-direct {p0, v0}, Lcom/xueqiu/android/stock/c/x;->b(I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v0

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 11367
    iget-object v2, v2, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 986
    invoke-virtual {v2}, Lcom/xueqiu/android/common/a/d;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/xueqiu/android/stock/c/y;->b:Ljava/util/ArrayList;

    .line 988
    :cond_0
    return-void
.end method

.method private G()V
    .locals 11

    .prologue
    const v10, 0x7f0702fc

    const/4 v9, 0x5

    const v5, 0x7f0200c2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1215
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v6

    .line 1216
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1218
    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 1220
    invoke-static {v6}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1222
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 1223
    const/16 v1, 0x8

    const v2, 0x7f0704dd

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1234
    :goto_0
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    .line 1246
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(II)Lcom/xueqiu/android/common/widget/i;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    .line 1248
    invoke-static {v6}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const v2, 0x7f070376

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1250
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const/4 v2, 0x3

    const v3, 0x7f0703f8

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1253
    :cond_0
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->az:Z

    if-eqz v1, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const v2, 0x7f070376

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1257
    const/16 v1, 0x12

    if-ne v6, v1, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const/4 v2, 0x3

    const v3, 0x7f0703f8

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const/4 v2, 0x2

    const v3, 0x7f0703c7

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1263
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1264
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const/4 v2, 0x4

    const v3, 0x7f07055e

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1268
    :cond_2
    const/16 v1, 0x1e

    if-ne v6, v1, :cond_3

    .line 1269
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aw:Lcom/xueqiu/android/common/widget/i;

    const/16 v2, 0xb

    const v3, 0x7f070122

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/widget/i;->a(ILjava/lang/String;)Lcom/xueqiu/android/common/widget/i;

    .line 1272
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->aG:Lcom/xueqiu/android/common/widget/j;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->setOnMenuItemSelectedListener(Lcom/xueqiu/android/common/widget/j;)V

    .line 1273
    return-void

    .line 1226
    :cond_4
    const/16 v1, 0x11

    if-eq v1, v6, :cond_5

    .line 1227
    const/4 v1, 0x6

    const v2, 0x7f0704dc

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1228
    const/4 v1, 0x7

    const v2, 0x7f0704df

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_0

    .line 1230
    :cond_5
    const/4 v1, 0x7

    const v2, 0x7f0704de

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1236
    :cond_6
    iget-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->az:Z

    if-eqz v1, :cond_7

    .line 1237
    const/16 v1, 0xa

    const v2, 0x7f070125

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1238
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 1240
    :cond_7
    invoke-virtual {p0, v10}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    .line 1241
    const v1, 0x7f070376

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 1216
    nop

    :array_0
    .array-data 4
        0x7f0100b6
        0x7f0100bc
        0x7f0100b8
        0x7f0100b9
    .end array-data
.end method

.method private H()V
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0e060d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0e060d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/x;I)I
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/xueqiu/android/stock/c/x;->aB:I

    return p1
.end method

.method public static a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/stock/c/x;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->g(Landroid/os/Bundle;)Lcom/xueqiu/android/stock/c/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/xueqiu/android/stock/model/StockQuote;Ljava/lang/String;)Lcom/xueqiu/android/stock/c/x;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v1, "extra_from_broker"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->g(Landroid/os/Bundle;)Lcom/xueqiu/android/stock/c/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 884
    new-instance v3, Lcom/xueqiu/android/stock/c/x$3;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/stock/c/x$3;-><init>(Lcom/xueqiu/android/stock/c/x;Landroid/view/ViewGroup;)V

    move v0, v1

    .line 941
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 942
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v2, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 943
    goto :goto_1

    .line 945
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/x;ILandroid/widget/AbsListView;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 20559
    .line 20560
    if-le p1, v1, :cond_3

    move v0, v1

    :goto_0
    move v2, v0

    .line 20572
    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->av:Z

    if-eq v0, v2, :cond_2

    .line 20573
    iput-boolean v2, p0, Lcom/xueqiu/android/stock/c/x;->av:Z

    .line 20574
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->E()V

    .line 20576
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->av:Z

    if-eqz v0, :cond_5

    const v0, 0x7f04001a

    .line 20577
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 20578
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v1, 0x7f0e0099

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20579
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20581
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v1, 0x7f0e05d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20582
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v3, 0x7f0e05d9

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 20583
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 20584
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 20586
    :cond_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 20587
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    :cond_2
    return-void

    .line 21240
    :cond_3
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 20563
    if-eqz v0, :cond_0

    .line 22240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 20564
    const v3, 0x7f0e05f9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 20565
    invoke-virtual {p2, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 20566
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 20567
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 20568
    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    if-lt v3, v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 20576
    :cond_5
    const v0, 0x7f04001b

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/x;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 996
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 999
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/c/x;->aD:I

    .line 1000
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1001
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/stock/c/x;->aE:I

    .line 1005
    :cond_0
    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->aD:I

    if-lt v1, v4, :cond_1

    .line 1006
    iput v4, p0, Lcom/xueqiu/android/stock/c/x;->aD:I

    .line 1007
    iput v2, p0, Lcom/xueqiu/android/stock/c/x;->aE:I

    .line 1011
    :cond_1
    new-instance v1, Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V

    .line 12165
    iput-object p0, v1, Lcom/xueqiu/android/community/a/ak;->g:Lcom/xueqiu/android/community/l;

    .line 1013
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/community/widget/i;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 1016
    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    if-eq v1, v5, :cond_2

    if-nez p1, :cond_2

    .line 1017
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    invoke-direct {p0, v2}, Lcom/xueqiu/android/stock/c/x;->b(I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v2

    iget-object v2, v2, Lcom/xueqiu/android/stock/c/y;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1018
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 12367
    iget-object v2, v2, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 1018
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/a/d;->a(Ljava/util/ArrayList;)V

    .line 1021
    :cond_2
    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->f:I

    if-ne v1, v5, :cond_4

    .line 1022
    const v1, 0x7f0e05ec

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1023
    if-eqz v1, :cond_3

    .line 1024
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/widget/i;->b(Z)V

    .line 1030
    :cond_4
    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->aD:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->aE:I

    if-eq v1, v3, :cond_6

    .line 1031
    :cond_5
    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->aD:I

    iget v2, p0, Lcom/xueqiu/android/stock/c/x;->aE:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1033
    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->aq:Z

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/stock/c/x;Z)Z
    .locals 0

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    return p1
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/x;I)I
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/xueqiu/android/stock/c/x;->f:I

    return p1
.end method

.method private b(I)Lcom/xueqiu/android/stock/c/y;
    .locals 1

    .prologue
    .line 1128
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->h:Lcom/xueqiu/android/stock/c/y;

    .line 1140
    :goto_0
    return-object v0

    .line 1130
    :cond_0
    if-nez p1, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->g:Lcom/xueqiu/android/stock/c/y;

    goto :goto_0

    .line 1132
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->al:Lcom/xueqiu/android/stock/c/y;

    goto :goto_0

    .line 1134
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1135
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ak:Lcom/xueqiu/android/stock/c/y;

    goto :goto_0

    .line 1136
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1137
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->am:Lcom/xueqiu/android/stock/c/y;

    goto :goto_0

    .line 1140
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->C()V

    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/stock/c/x;Z)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/x;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/x;I)I
    .locals 0

    .prologue
    .line 111
    iput p1, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->D()V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/stock/c/x;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0x640

    .line 111
    .line 29413
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29414
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 29415
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 29725
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    .line 29415
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 30725
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    .line 31240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 29415
    if-eqz v0, :cond_0

    .line 29416
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    .line 31725
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    .line 32240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 29416
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 29417
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 29419
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    if-eqz p1, :cond_4

    const-string v0, "SELL"

    move-object v1, v0

    .line 32337
    :goto_0
    iput-object v1, v2, Lcom/xueqiu/android/trade/c/e;->b:Ljava/lang/String;

    .line 32338
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/trade/c/e;->e(Ljava/lang/String;)V

    .line 32339
    iget-object v0, v2, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    iget-object v3, v2, Lcom/xueqiu/android/trade/c/e;->an:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/xueqiu/android/trade/b/b;->e(Ljava/lang/String;)V

    .line 32340
    iget-object v0, v2, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32341
    iget-object v0, v2, Lcom/xueqiu/android/trade/c/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/trade/c/e;->d(Ljava/lang/String;)V

    .line 32343
    :cond_1
    iget-object v0, v2, Lcom/xueqiu/android/trade/c/e;->a:Lcom/xueqiu/android/base/c;

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(Ljava/lang/String;)V

    .line 32344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/xueqiu/android/trade/c/e;->am:J

    .line 29420
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Ljava/lang/String;)V

    .line 29426
    :cond_2
    :goto_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x13

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 29427
    if-eqz p1, :cond_3

    .line 29429
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 29430
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x15

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 29436
    :cond_3
    :goto_2
    const-string v1, "type"

    iget v2, p0, Lcom/xueqiu/android/stock/c/x;->aB:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 29437
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 111
    return-void

    .line 29419
    :cond_4
    const-string v0, "BUY"

    move-object v1, v0

    goto :goto_0

    .line 29423
    :cond_5
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1

    .line 29432
    :cond_6
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x14

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/x;I)Lcom/xueqiu/android/stock/c/y;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/c/x;->b(I)Lcom/xueqiu/android/stock/c/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->aq:Z

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->au:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    return-object v0
.end method

.method private static g(Landroid/os/Bundle;)Lcom/xueqiu/android/stock/c/x;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/xueqiu/android/stock/c/x;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/x;-><init>()V

    .line 196
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/stock/c/x;->e(Landroid/os/Bundle;)V

    .line 197
    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/stock/c/x;)V
    .locals 4

    .prologue
    .line 19508
    new-instance v0, Lcom/xueqiu/android/stock/c/x$6;

    invoke-direct {v0, p0, p0}, Lcom/xueqiu/android/stock/c/x$6;-><init>(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/base/b/q;)V

    .line 19562
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19563
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 19568
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->y()Landroid/app/Dialog;

    .line 111
    return-void

    .line 19565
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/stock/c/x;)I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->aB:I

    return v0
.end method

.method static synthetic j(Lcom/xueqiu/android/stock/c/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/xueqiu/android/stock/c/x;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    return v0
.end method

.method static synthetic m(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->az:Z

    return v0
.end method

.method static synthetic n(Lcom/xueqiu/android/stock/c/x;)V
    .locals 2

    .prologue
    .line 111
    .line 22386
    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;

    .line 22387
    if-eqz v0, :cond_0

    .line 23252
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 22389
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->G()V

    .line 22390
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/FloatingActionMenu;->invalidate()V

    .line 111
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/stock/c/x;)V
    .locals 14

    .prologue
    .line 111
    .line 23747
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v7

    .line 23748
    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 23749
    const/4 v6, 0x0

    .line 23750
    const/4 v5, 0x0

    .line 23753
    invoke-static {v7}, Lcom/xueqiu/android/base/util/as;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    if-eqz v1, :cond_11

    .line 23785
    :cond_0
    iget v1, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 23786
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    .line 24393
    iget-object v1, v1, Lcom/xueqiu/android/common/r;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 23787
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b()V

    .line 23788
    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->e()V

    .line 23791
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v3

    .line 23793
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23794
    const v1, 0x7f0e05ed

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23797
    :cond_2
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23798
    const v1, 0x7f0e05ee

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23801
    :cond_3
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    if-eqz v1, :cond_5

    .line 23802
    :cond_4
    const v1, 0x7f0e05ef

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23805
    :cond_5
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->d(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23806
    const v1, 0x7f0e05f0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24813
    :cond_6
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24814
    const v1, 0x7f0e05ed

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 24815
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 24816
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 24819
    new-instance v8, Lcom/xueqiu/android/stock/c/x$14;

    invoke-direct {v8, p0, v2, v4}, Lcom/xueqiu/android/stock/c/x$14;-><init>(Lcom/xueqiu/android/stock/c/x;ILandroid/view/View;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24815
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24839
    :cond_7
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->c(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->d(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    if-eqz v1, :cond_c

    .line 24840
    :cond_8
    const v1, 0x7f0e05ee

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 24841
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v2

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/xueqiu/android/stock/c/x;->ay:Z

    if-eqz v2, :cond_a

    .line 24842
    :cond_9
    const v1, 0x7f0e05ef

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 24845
    :cond_a
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v4

    .line 24846
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "%s/S/%s/info"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://xueqiu.com"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 24847
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "%s/S/%s/dividends"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://xueqiu.com"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 24848
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const-string v9, "%s/S/%s/income"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://xueqiu.com"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 24849
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x3

    const-string v9, "%s/S/%s/balance"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://xueqiu.com"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 24850
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x4

    const-string v9, "%s/S/%s/cash"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://xueqiu.com"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 24851
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x5

    const-string v9, "%s/S/%s/keyratios"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "https://xueqiu.com"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    .line 24852
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 24855
    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->d(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 24856
    const v1, 0x7f0e05f0

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 24858
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "%s/S/%s/gsjj"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "https://xueqiu.com"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 24859
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x1

    const-string v8, "%s/S/%s/zycwzb"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "https://xueqiu.com"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 24860
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x2

    const-string v8, "%s/S/%s/gslrb"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "https://xueqiu.com"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 24861
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x3

    const-string v8, "%s/S/%s/zcfzb"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "https://xueqiu.com"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 24862
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x4

    const-string v8, "%s/S/%s/xjllb"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "https://xueqiu.com"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    .line 24863
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    .line 24869
    :goto_1
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v4, v3, :cond_c

    .line 24870
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 24871
    array-length v3, v1

    if-ge v4, v3, :cond_b

    aget-object v3, v1, v4

    .line 24873
    :goto_3
    new-instance v9, Lcom/xueqiu/android/stock/c/x$2;

    invoke-direct {v9, p0, v3}, Lcom/xueqiu/android/stock/c/x$2;-><init>(Lcom/xueqiu/android/stock/c/x;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24869
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 24871
    :cond_b
    const-string v3, ""

    goto :goto_3

    :cond_c
    move v2, v6

    .line 23762
    :goto_4
    const/16 v1, 0xb

    if-eq v7, v1, :cond_12

    .line 23763
    const/4 v1, 0x1

    .line 23764
    const v3, 0x7f0e0610

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23765
    const v3, 0x7f0e0610

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 23768
    :goto_5
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v3, "stock_tab_selected"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 23771
    const/4 v3, 0x5

    if-ne v1, v3, :cond_d

    if-nez v2, :cond_e

    :cond_d
    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    if-eqz v0, :cond_f

    .line 23772
    :cond_e
    const/4 v0, 0x0

    move v1, v0

    .line 23775
    :cond_f
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->an:Lcom/xueqiu/android/community/widget/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v0

    const v2, 0x7f0e060c

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 23776
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 23777
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 111
    :cond_10
    return-void

    .line 23756
    :cond_11
    const/4 v1, 0x1

    .line 23757
    const v2, 0x7f0e0611

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/stock/c/x;->c(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23758
    const v2, 0x7f0e0611

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move v2, v1

    goto :goto_4

    :cond_12
    move v0, v5

    goto :goto_5

    :cond_13
    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_1
.end method

.method static synthetic p(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/trade/c/e;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    return-object v0
.end method

.method static synthetic q(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->d:Z

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/stock/c/x;)V
    .locals 3

    .prologue
    .line 111
    .line 25483
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_1

    .line 25487
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 25491
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25492
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v1, 0x7f0e05d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 25493
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 25494
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/f/a;->a(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setMinTextSize(F)V

    .line 25497
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->E()V

    .line 25500
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25502
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25503
    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    .line 25505
    :cond_2
    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/xueqiu/android/stock/c/x;)V
    .locals 4

    .prologue
    .line 25596
    const-string v1, ""

    .line 25597
    const-string v0, ""

    .line 25599
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v2

    .line 26197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 25599
    if-nez v2, :cond_2

    .line 25603
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 25604
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 25605
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v0

    .line 25608
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1

    .line 25609
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v1

    .line 25610
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 27197
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 25613
    if-nez v2, :cond_2

    .line 28197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 25613
    if-eqz v2, :cond_3

    .line 25614
    :cond_2
    :goto_0
    return-void

    .line 25617
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/stock/c/x$12;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/stock/c/x$12;-><init>(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/base/b/q;)V

    .line 28279
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v2, v1, v0, v3}, Lcom/xueqiu/android/base/b/ak;->f(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic t(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->aA:Z

    return v0
.end method

.method static synthetic u(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->aA:Z

    return v0
.end method

.method static synthetic v(Lcom/xueqiu/android/stock/c/x;)Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->as:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->ax:Z

    return v0
.end method

.method static synthetic x(Lcom/xueqiu/android/stock/c/x;)I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/xueqiu/android/stock/c/x;->e:I

    return v0
.end method

.method static synthetic y(Lcom/xueqiu/android/stock/c/x;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->ax:Z

    return v0
.end method

.method static synthetic z(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->H()V

    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 470
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->d:Z

    .line 8240
    iget-object v0, p0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 471
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->aq:Z

    if-nez v0, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->C()V

    .line 473
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->D()V

    .line 474
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->aq:Z

    .line 476
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 209
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ar:Landroid/view/ViewGroup;

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->e_(Z)V

    .line 212
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->ap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 1145
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1146
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v1, "status_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v1, "type"

    iget v2, p0, Lcom/xueqiu/android/stock/c/x;->aB:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1149
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1150
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/c;->a(Landroid/os/Bundle;)V

    .line 3564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 203
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 205
    return-void
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1404
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_0

    .line 1405
    const v1, 0x7f0e000b

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1406
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070555

    .line 1405
    :goto_0
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1407
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 1409
    :cond_0
    return-void

    .line 1406
    :cond_1
    const v0, 0x7f070160

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/StockDetailActivity;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 4493
    iget-boolean v3, v0, Lcom/xueqiu/android/stock/StockDetailActivity;->p:Z

    if-nez v3, :cond_0

    .line 4497
    iget-object v3, v0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 4501
    iget-object v3, v0, Lcom/xueqiu/android/stock/StockDetailActivity;->j:Ljava/util/List;

    iget v0, v0, Lcom/xueqiu/android/stock/StockDetailActivity;->k:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 220
    :goto_0
    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/stock/c/x$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/x$1;-><init>(Lcom/xueqiu/android/stock/c/x;)V

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 236
    :goto_1
    return-void

    .line 4501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->C()V

    .line 233
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->D()V

    .line 234
    iput-boolean v1, p0, Lcom/xueqiu/android/stock/c/x;->aq:Z

    goto :goto_1
.end method

.method public final a(Lcom/google/gson/JsonArray;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1580
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/stock/model/StockQuote;->setCurrent(D)V

    .line 1583
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/stock/model/StockQuote;->setChange(D)V

    .line 1587
    :cond_1
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/xueqiu/android/stock/model/StockQuote;->setPercentage(D)V

    .line 1590
    :cond_2
    invoke-virtual {p1, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1591
    invoke-virtual {p1, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x19

    if-le v3, v4, :cond_3

    .line 1594
    :try_start_0
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->setUpdateTime(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    if-eqz v0, :cond_8

    .line 1602
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x;->c:Lcom/xueqiu/android/stock/c/t;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 17720
    iput-object v0, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 18630
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/t;->u()V

    .line 18632
    iget-object v0, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18633
    const/16 v4, 0x14

    if-eq v0, v4, :cond_4

    const/16 v4, 0x12

    if-ne v0, v4, :cond_b

    :cond_4
    move v0, v2

    .line 18634
    :goto_1
    if-nez v0, :cond_5

    .line 18635
    iget-object v0, v3, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    iget-object v1, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v4, v5, v1}, Lcom/xueqiu/android/base/util/as;->a(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18636
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/t;->C()V

    .line 18639
    :cond_5
    iget-object v0, v3, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    if-eqz v0, :cond_6

    .line 18640
    iget-object v0, v3, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v1, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    double-to-float v1, v4

    iget-object v2, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/xueqiu/android/stockchart/d/c;->a(FJ)V

    .line 18643
    :cond_6
    iget-object v0, v3, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    if-eqz v0, :cond_7

    .line 18644
    iget-object v0, v3, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v1, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    double-to-float v1, v4

    iget-object v2, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/xueqiu/android/stockchart/d/b;->a(FJ)V

    .line 18647
    :cond_7
    const-string v0, "StockDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QuoteFragment updatePrice"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    if-eqz v0, :cond_9

    .line 1605
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 1608
    :cond_9
    iget-boolean v0, p0, Lcom/xueqiu/android/stock/c/x;->av:Z

    if-eqz v0, :cond_a

    .line 1609
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/x;->E()V

    .line 1611
    :cond_a
    return-void

    .line 1596
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 18633
    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1172
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1173
    const-string v1, "card_id"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1174
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1175
    return-void
.end method

.method public final a(Ljava/lang/String;JI)V
    .locals 4

    .prologue
    .line 1189
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1190
    const-string v1, "card_id"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v1, "user_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v1, "pos"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 17053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1193
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1194
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1179
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1180
    const-string v1, "card_id"

    invoke-virtual {v0, v1, p1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v1, "recommend_id"

    invoke-virtual {v0, v1, p2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v1, "card_type"

    invoke-virtual {v0, v1, p3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v1, "pos"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1184
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1185
    return-void
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aG:Lcom/xueqiu/android/common/widget/j;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x;->aG:Lcom/xueqiu/android/common/widget/j;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/j;->a(I)Z

    move-result v0

    .line 1399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 1154
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1155
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v1, "status_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string v1, "type"

    iget v2, p0, Lcom/xueqiu/android/stock/c/x;->aB:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1158
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1159
    return-void
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 1615
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->q()V

    .line 1616
    return-void
.end method

.method public final u()V
    .locals 4

    .prologue
    .line 686
    new-instance v0, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/r;-><init>()V

    .line 688
    sget-object v1, Lcom/android/volley/o;->c:Lcom/android/volley/o;

    .line 11033
    iput-object v1, v0, Lcom/xueqiu/android/base/b/r;->c:Lcom/android/volley/o;

    .line 689
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/x;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x;->b:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/stock/c/x$13;

    invoke-direct {v3, p0, p0}, Lcom/xueqiu/android/stock/c/x$13;-><init>(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 743
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 744
    return-void
.end method

.method public final y_()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1620
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->au:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 1621
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    .line 1633
    :cond_0
    :goto_0
    return v0

    .line 1624
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/e;->y_()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1628
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->au:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1629
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x;->at:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->f(Z)V

    goto :goto_0

    .line 1633
    :cond_3
    invoke-super {p0}, Lcom/xueqiu/android/common/c;->y_()Z

    move-result v0

    goto :goto_0
.end method
