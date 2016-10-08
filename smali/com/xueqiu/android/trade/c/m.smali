.class public final Lcom/xueqiu/android/trade/c/m;
.super Lcom/xueqiu/android/common/c;
.source "TakingPositionFragment.java"


# instance fields
.field public a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ListView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/android/volley/n;
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

.field private g:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->b:Landroid/widget/ListView;

    .line 75
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->c:Ljava/util/ArrayList;

    .line 76
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->d:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->e:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    .line 290
    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->g:Landroid/view/MenuItem;

    return-void
.end method

.method private static C()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 227
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CSRFGuard_Since_2014"

    invoke-static {v3}, Lcom/xueqiu/android/base/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v4, "x-sid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "x-timestamp"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "x-sign-token"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-object v3
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/m;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/c/m;Ljava/util/ArrayList;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 3277
    if-nez p1, :cond_0

    .line 3278
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 3279
    :goto_0
    return-void

    .line 3281
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3282
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3284
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 3285
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/m;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->g:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/trade/c/m;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 66
    .line 4248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    .line 4249
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    .line 4336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 4249
    if-nez v0, :cond_0

    .line 4250
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    .line 5329
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 4253
    :cond_0
    new-instance v6, Lcom/xueqiu/android/trade/c/m$3;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/trade/c/m$3;-><init>(Lcom/xueqiu/android/trade/c/m;Lcom/xueqiu/android/base/b/q;)V

    .line 4267
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 4268
    const/16 v3, 0xa

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 6077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    move-object v2, p1

    .line 4268
    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    .line 66
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/trade/c/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/trade/c/m;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/trade/c/m;)Lcom/android/volley/n;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->f:Lcom/android/volley/n;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/trade/c/m;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/m;->c(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u()Ljava/util/Map;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/xueqiu/android/trade/c/m;->C()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/m;->e_(Z)V

    .line 84
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/m;->d(I)V

    .line 85
    const v0, 0x7f0300a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 87
    const v0, 0x7f0e013f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->b:Landroid/widget/ListView;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->c:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/xueqiu/android/common/a/f;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/m;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/a/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 92
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/m;->b:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/m;->b:Landroid/widget/ListView;

    new-instance v3, Lcom/xueqiu/android/trade/c/m$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/trade/c/m$1;-><init>(Lcom/xueqiu/android/trade/c/m;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    return-object v1
.end method

.method public final a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 298
    const-string v0, ""

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 299
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->g:Landroid/view/MenuItem;

    .line 300
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->g:Landroid/view/MenuItem;

    const v1, 0x7f0300cb

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 301
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->g:Landroid/view/MenuItem;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->g:Landroid/view/MenuItem;

    new-instance v1, Lcom/xueqiu/android/trade/c/m$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/m$4;-><init>(Lcom/xueqiu/android/trade/c/m;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;Landroid/support/v4/view/ap;)Landroid/view/MenuItem;

    .line 354
    return-void

    .line 294
    :array_0
    .array-data 4
        0x7f010097
        0x7f01008f
        0x7f0100ac
    .end array-data
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 109
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f0703f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/m;->d(I)V

    .line 1137
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/c/m;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    .line 1138
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/m;->y()Landroid/app/Dialog;

    .line 1153
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1154
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1156
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1157
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1158
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1159
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/common/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1160
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/trade/c/m$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/trade/c/m$2;-><init>(Lcom/xueqiu/android/trade/c/m;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 115
    const-string v1, "arg_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 2564
    iget-object v1, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 116
    const-string v2, "arg_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/trade/c/m;->e:Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/m;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/c/m;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Xueqiu Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m;->e:Ljava/lang/String;

    invoke-static {}, Lcom/xueqiu/android/trade/c/m;->C()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :cond_1
    if-eqz v0, :cond_2

    .line 129
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    const-string v2, "%s?symbol=%s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "https://xueqiu.com/performance/mobile/trans/add"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    const-string v1, "https://xueqiu.com/performance/mobile?isMobile=true"

    invoke-static {}, Lcom/xueqiu/android/trade/c/m;->C()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
