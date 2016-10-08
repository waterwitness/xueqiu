.class public Lcom/xueqiu/android/common/widget/SNBWebView;
.super Landroid/webkit/WebView;
.source "SNBWebView.java"


# instance fields
.field private a:Lcom/xueqiu/android/base/b/w;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->a:Lcom/xueqiu/android/base/b/w;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    .line 59
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->a()V

    .line 62
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->a:Lcom/xueqiu/android/base/b/w;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    .line 66
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->a:Lcom/xueqiu/android/base/b/w;

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    .line 73
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->a()V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/widget/SNBWebView;)Lcom/xueqiu/android/base/b/w;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->a:Lcom/xueqiu/android/base/b/w;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 82
    new-instance v0, Lcom/xueqiu/android/common/widget/ah;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/ah;-><init>(Lcom/xueqiu/android/common/widget/SNBWebView;)V

    const-string v1, "AndroidJsObject"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/xueqiu/android/base/b/af;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 88
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/xueqiu/android/base/b/w;

    invoke-direct {v3, v2, v0, v1}, Lcom/xueqiu/android/base/b/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V

    iput-object v3, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->a:Lcom/xueqiu/android/base/b/w;

    .line 98
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    .line 1151
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1155
    :cond_0
    const-string v0, "broker/trade.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "broker/proxy.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 167
    :goto_0
    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 172
    :goto_1
    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1158
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1162
    goto :goto_0

    :cond_5
    move v0, v2

    .line 171
    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-static {p1}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getHeaderWithAccessToken()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/ao;->a(Landroid/content/Context;)V

    .line 215
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 103
    const-string v0, "AndroidJsObject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the name of javascript interface had be used"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHeaderWithAccessToken()Ljava/util/Map;
    .locals 7
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
    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 2182
    iget-object v1, v1, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 221
    const-string v2, "Cookie"

    const-string v3, "domain=%s;xq_a_token=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "xueqiu.com"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v0
.end method

.method public goBack()V
    .locals 3

    .prologue
    .line 186
    const-string v0, "SNBWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mRedirectedCount="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 191
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    if-lez v0, :cond_2

    .line 193
    const/4 v0, 0x0

    .line 194
    :goto_1
    iget v1, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    if-lez v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    iget v1, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    goto :goto_1

    .line 198
    :cond_1
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->b(Ljava/lang/String;)V

    .line 1326
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->c:I

    goto :goto_0

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/SNBWebView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getHeaderWithAccessToken()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    const-string v0, "Accept-Language"

    const-string v1, "en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/SNBWebView;->a(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/SNBWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ao;->a(Landroid/content/Context;)V

    .line 140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    return-void
.end method
