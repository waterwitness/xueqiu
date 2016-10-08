.class public Lorg/apache/cordova/CordovaWebView;
.super Landroid/webkit/WebView;
.source "CordovaWebView.java"


# static fields
.field static final h:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field public a:Lorg/apache/cordova/x;

.field b:Lorg/apache/cordova/l;

.field c:I

.field d:Lorg/apache/cordova/p;

.field e:Lorg/apache/cordova/m;

.field f:Landroid/view/View;

.field g:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Lorg/apache/cordova/f;

.field private m:Lorg/apache/cordova/e;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:J

.field private r:Lorg/apache/cordova/k;

.field private s:Lorg/apache/cordova/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lorg/apache/cordova/CordovaWebView;->h:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->i:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->j:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 95
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->p:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/cordova/CordovaWebView;->q:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->r:Lorg/apache/cordova/k;

    .line 138
    const-class v0, Lorg/apache/cordova/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lorg/apache/cordova/f;

    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    .line 146
    :goto_0
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->f()V

    .line 147
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->d()V

    .line 148
    return-void

    .line 144
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->i:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->j:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 95
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->p:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/cordova/CordovaWebView;->q:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->r:Lorg/apache/cordova/k;

    .line 158
    const-class v0, Lorg/apache/cordova/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    check-cast p1, Lorg/apache/cordova/f;

    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    .line 166
    :goto_0
    new-instance v0, Lorg/apache/cordova/e;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/e;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/e;)V

    .line 167
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->c()V

    .line 168
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->f()V

    .line 169
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->d()V

    .line 170
    return-void

    .line 164
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->i:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->j:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 95
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->p:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/cordova/CordovaWebView;->q:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->r:Lorg/apache/cordova/k;

    .line 182
    const-class v0, Lorg/apache/cordova/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lorg/apache/cordova/f;

    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    .line 190
    :goto_0
    new-instance v0, Lorg/apache/cordova/e;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/e;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/e;)V

    .line 191
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->f()V

    .line 192
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->d()V

    .line 193
    return-void

    .line 188
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->i:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->j:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 95
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->p:Z

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/cordova/CordovaWebView;->q:J

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->r:Lorg/apache/cordova/k;

    .line 206
    const-class v0, Lorg/apache/cordova/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    check-cast p1, Lorg/apache/cordova/f;

    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    .line 214
    :goto_0
    new-instance v0, Lorg/apache/cordova/e;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, v1}, Lorg/apache/cordova/e;-><init>(Lorg/apache/cordova/f;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/e;)V

    .line 215
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->c()V

    .line 216
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->f()V

    .line 217
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->d()V

    .line 218
    return-void

    .line 212
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 671
    if-nez v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-object p2

    .line 674
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method static synthetic a(Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->e()V

    return-void
.end method

.method static synthetic b(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/f;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    .line 227
    :cond_0
    new-instance v0, Lorg/apache/cordova/l;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/l;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/l;)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Lorg/apache/cordova/n;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/n;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/l;)V

    goto :goto_0
.end method

.method private d()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 241
    invoke-virtual {p0, v7}, Lorg/apache/cordova/CordovaWebView;->setInitialScale(I)V

    .line 242
    invoke-virtual {p0, v7}, Lorg/apache/cordova/CordovaWebView;->setVerticalScrollBarEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->requestFocusFromTouch()Z

    .line 247
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 249
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 250
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 254
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v2, "setNavDump"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 257
    const-string v3, "CordovaWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CordovaWebView is running on device made by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "HTC"

    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 275
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v0, v2, :cond_1

    .line 1896
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 283
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "database"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 285
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 290
    :try_start_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v3}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 294
    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 296
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_2

    .line 299
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/cordova/CordovaWebView;->setWebContentsDebuggingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 309
    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 315
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 319
    const-wide/32 v2, 0x500000

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 320
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "database"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 326
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->e()V

    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->k:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 331
    new-instance v1, Lorg/apache/cordova/CordovaWebView$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/CordovaWebView$1;-><init>(Lorg/apache/cordova/CordovaWebView;)V

    iput-object v1, p0, Lorg/apache/cordova/CordovaWebView;->k:Landroid/content/BroadcastReceiver;

    .line 337
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 341
    :cond_3
    new-instance v0, Lorg/apache/cordova/x;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, p0, v1}, Lorg/apache/cordova/x;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    .line 342
    new-instance v0, Lorg/apache/cordova/p;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-direct {v0, p0, v1}, Lorg/apache/cordova/p;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->d:Lorg/apache/cordova/p;

    .line 343
    new-instance v0, Lorg/apache/cordova/m;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->d:Lorg/apache/cordova/p;

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/m;-><init>(Lorg/apache/cordova/x;Lorg/apache/cordova/p;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->e:Lorg/apache/cordova/m;

    .line 344
    new-instance v0, Lorg/apache/cordova/h;

    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/h;-><init>(Landroid/content/Context;Lorg/apache/cordova/x;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->s:Lorg/apache/cordova/h;

    .line 2363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2364
    const/16 v1, 0x11

    if-ge v0, v1, :cond_4

    .line 2365
    const-string v0, "CordovaWebView"

    const-string v1, "Disabled addJavascriptInterface() bridge since Android version is old."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :goto_2
    return-void

    .line 264
    :catch_0
    move-exception v0

    const-string v0, "CordovaWebView"

    const-string v2, "We are on a modern version of Android, we will deprecate HTC 2.3 devices in 2.8"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    :catch_1
    move-exception v0

    const-string v0, "CordovaWebView"

    const-string v2, "Doing the NavDump failed with bad arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    :catch_2
    move-exception v0

    const-string v0, "CordovaWebView"

    const-string v2, "This should never happen: IllegalAccessException means this isn\'t Android anymore"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :catch_3
    move-exception v0

    const-string v0, "CordovaWebView"

    const-string v2, "This should never happen: InvocationTargetException means this isn\'t Android anymore."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    :catch_4
    move-exception v0

    .line 302
    const-string v3, "CordovaWebView"

    const-string v4, "You have one job! To turn on Remote Web Debugging! YOU HAVE FAILED! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 304
    :catch_5
    move-exception v0

    .line 305
    const-string v3, "CordovaWebView"

    const-string v4, "This should never happen: Your application\'s package can\'t be found."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 2371
    :cond_4
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->e:Lorg/apache/cordova/m;

    const-string v1, "_cordovaNative"

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private e()V
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 360
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 656
    const-string v0, "true"

    const-string v1, "Fullscreen"

    const-string v2, "false"

    invoke-direct {p0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 658
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 660
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 854
    const-string v0, "javascript:try{cordova.require(\'cordova/channel\').onDestroy.fire();}catch(e){console.log(\'exception firing destroy event from native\');};"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 857
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    invoke-virtual {v0}, Lorg/apache/cordova/x;->b()V

    .line 865
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->k:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 867
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_1
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    const-string v1, "CordovaWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error unregistering configuration receiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Lorg/apache/cordova/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    const-string v0, "CordovaWebView"

    const-string v1, ">>> loadUrlNow()"

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/cordova/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 504
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    .line 4353
    iget-object v1, v0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v1, p1, p2}, Lorg/apache/cordova/f;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4354
    if-nez v1, :cond_1

    .line 4357
    iget-object v0, v0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/w;

    .line 4358
    iget-object v0, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    if-eqz v0, :cond_0

    .line 4359
    invoke-static {}, Lorg/apache/cordova/g;->c()Ljava/lang/Object;

    goto :goto_0

    .line 578
    :cond_1
    return-void
.end method

.method public final a(Lorg/apache/cordova/z;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 565
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->d:Lorg/apache/cordova/p;

    .line 3230
    if-nez p2, :cond_1

    .line 3231
    const-string v0, "JsMessageQueue"

    const-string v1, "Got plugin result with no callbackId"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4257
    :cond_0
    :goto_0
    return-void

    .line 4088
    :cond_1
    iget v0, p1, Lorg/apache/cordova/z;->a:I

    .line 3236
    sget v2, Lorg/apache/cordova/aa;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    .line 4111
    :goto_1
    iget-boolean v2, p1, Lorg/apache/cordova/z;->c:Z

    .line 3238
    if-eqz v0, :cond_2

    if-nez v2, :cond_0

    .line 3241
    :cond_2
    new-instance v0, Lorg/apache/cordova/r;

    invoke-direct {v0, p1, p2}, Lorg/apache/cordova/r;-><init>(Lorg/apache/cordova/z;Ljava/lang/String;)V

    .line 4252
    monitor-enter v1

    .line 4253
    :try_start_0
    iget-object v2, v1, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4254
    iget-boolean v0, v1, Lorg/apache/cordova/p;->b:Z

    if-nez v0, :cond_3

    .line 4255
    iget-object v0, v1, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    iget v2, v1, Lorg/apache/cordova/p;->a:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/cordova/q;->a()V

    .line 4257
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3236
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 954
    const-string v0, "CordovaWebView"

    const-string v1, "Hiding Custom View"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 968
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 961
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 962
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->f:Landroid/view/View;

    .line 964
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->g:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 967
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getResourceApi()Lorg/apache/cordova/h;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->s:Lorg/apache/cordova/h;

    return-object v0
.end method

.method public getWebChromeClient()Lorg/apache/cordova/e;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->m:Lorg/apache/cordova/e;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 405
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 2442
    :cond_1
    const-string v0, "CordovaWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>> loadUrl("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->n:Ljava/lang/String;

    .line 2446
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    invoke-virtual {v0}, Lorg/apache/cordova/x;->a()V

    .line 2451
    iget v4, p0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 2452
    const-string v0, "LoadUrlTimeoutValue"

    const-string v1, "20000"

    invoke-direct {p0, v0, v1}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2455
    new-instance v5, Lorg/apache/cordova/CordovaWebView$2;

    invoke-direct {v5, p0, p0, p1}, Lorg/apache/cordova/CordovaWebView$2;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    .line 2466
    new-instance v0, Lorg/apache/cordova/CordovaWebView$3;

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/CordovaWebView$3;-><init>(Lorg/apache/cordova/CordovaWebView;ILorg/apache/cordova/CordovaWebView;ILjava/lang/Runnable;)V

    .line 2484
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/CordovaWebView$4;

    invoke-direct {v2, p0, v0, p0, p1}, Lorg/apache/cordova/CordovaWebView$4;-><init>(Lorg/apache/cordova/CordovaWebView;Ljava/lang/Runnable;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 688
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 690
    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 692
    const-string v0, "CordovaWebView"

    const-string v2, "Down Key Hit"

    invoke-static {v0, v2}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "javascript:cordova.fireDocumentEvent(\'volumedownbutton\');"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 727
    :goto_0
    return v0

    .line 697
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 698
    const-string v0, "CordovaWebView"

    const-string v2, "Up Key Hit"

    invoke-static {v0, v2}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v0, "javascript:cordova.fireDocumentEvent(\'volumeupbutton\');"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    .line 700
    goto :goto_0

    .line 704
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 707
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 4915
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 4916
    invoke-virtual {v0, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 4917
    if-eqz v0, :cond_4

    .line 4918
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4919
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 4920
    const-string v4, "CordovaWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The current URL is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    const-string v4, "CordovaWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The URL at item 0 is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4922
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 709
    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/cordova/CordovaWebView;->o:Z

    if-eqz v0, :cond_5

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 4924
    goto :goto_1

    :cond_5
    move v0, v2

    .line 709
    goto :goto_0

    .line 711
    :cond_6
    const/16 v0, 0x52

    if-ne p1, v0, :cond_8

    .line 714
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 715
    if-eqz v3, :cond_7

    .line 718
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "input_method"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 719
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 720
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    move v0, v1

    .line 721
    goto/16 :goto_0

    .line 723
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 727
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 735
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    .line 737
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->f:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 738
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->b()V

    .line 781
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 742
    :cond_2
    iget-boolean v2, p0, Lorg/apache/cordova/CordovaWebView;->o:Z

    if-eqz v2, :cond_3

    .line 743
    const-string v1, "javascript:cordova.fireDocumentEvent(\'backbutton\');"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 5590
    :cond_3
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5901
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    .line 5902
    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    .line 5903
    :goto_2
    if-ge v1, v3, :cond_4

    .line 5905
    invoke-virtual {v2, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 5906
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 5907
    const-string v5, "CordovaWebView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The URL at index: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5903
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5592
    :cond_4
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    move v1, v0

    .line 748
    :cond_5
    if-nez v1, :cond_1

    .line 756
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->l:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 762
    :cond_6
    const/16 v1, 0x52

    if-ne p1, v1, :cond_8

    .line 763
    iget-wide v0, p0, Lorg/apache/cordova/CordovaWebView;->q:J

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 764
    const-string v0, "javascript:cordova.fireDocumentEvent(\'menubutton\');"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 766
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/cordova/CordovaWebView;->q:J

    .line 767
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 770
    :cond_8
    const/16 v1, 0x54

    if-ne p1, v1, :cond_9

    .line 771
    const-string v1, "javascript:cordova.fireDocumentEvent(\'searchbutton\');"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 774
    :cond_9
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->j:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method public onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 543
    new-instance v0, Lorg/apache/cordova/ab;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/apache/cordova/ab;-><init>(IIILandroid/view/View;)V

    .line 544
    const-string v1, "onScrollChanged"

    invoke-virtual {p0, v1, v0}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 3

    .prologue
    .line 982
    invoke-super {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 983
    const-string v1, "CordovaWebView"

    const-string v2, "WebView restoration crew now restoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    invoke-virtual {v1}, Lorg/apache/cordova/x;->a()V

    .line 986
    return-object v0
.end method

.method public setWebChromeClient(Lorg/apache/cordova/e;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->m:Lorg/apache/cordova/e;

    .line 391
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 392
    return-void
.end method

.method public setWebViewClient(Lorg/apache/cordova/l;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->b:Lorg/apache/cordova/l;

    .line 381
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 382
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->b:Lorg/apache/cordova/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/cordova/l;->isCurrentlyLoading:Z

    .line 536
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 537
    return-void
.end method
