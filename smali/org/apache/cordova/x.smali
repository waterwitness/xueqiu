.class public final Lorg/apache/cordova/x;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static d:Ljava/lang/String;

.field private static final e:I


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/w;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lorg/apache/cordova/f;

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Lorg/apache/cordova/CordovaWebView;

.field private g:Z

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "PluginManager"

    sput-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    :goto_0
    sput v0, Lorg/apache/cordova/x;->e:I

    return-void

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/x;->c:Ljava/util/HashMap;

    .line 77
    iput-object p2, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    .line 78
    iput-object p1, p0, Lorg/apache/cordova/x;->f:Lorg/apache/cordova/CordovaWebView;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/x;->g:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/cordova/x;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    return-void
.end method

.method static synthetic a(Lorg/apache/cordova/x;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/cordova/x;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private a(Lorg/apache/cordova/w;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method static synthetic a(Lorg/apache/cordova/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lorg/apache/cordova/x;)Lorg/apache/cordova/f;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/apache/cordova/g;
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/w;

    .line 276
    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 279
    :cond_0
    iget-object v1, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 280
    if-nez v1, :cond_1

    .line 281
    iget-object v1, p0, Lorg/apache/cordova/x;->f:Lorg/apache/cordova/CordovaWebView;

    iget-object v2, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/w;->a(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)Lorg/apache/cordova/g;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lorg/apache/cordova/x;->b(Ljava/lang/String;)Lorg/apache/cordova/g;

    move-result-object v0

    .line 233
    if-nez v0, :cond_1

    .line 234
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exec() call to unknown plugin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lorg/apache/cordova/z;

    sget v1, Lorg/apache/cordova/aa;->c:I

    invoke-direct {v0, v1}, Lorg/apache/cordova/z;-><init>(I)V

    .line 236
    iget-object v1, p0, Lorg/apache/cordova/x;->f:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1, v0, p3}, Lorg/apache/cordova/CordovaWebView;->a(Lorg/apache/cordova/z;Ljava/lang/String;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v1, Lorg/apache/cordova/b;

    iget-object v2, p0, Lorg/apache/cordova/x;->f:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v1, p3, v2}, Lorg/apache/cordova/b;-><init>(Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 241
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2064
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2065
    invoke-virtual {v0, p2, v4, v1}, Lorg/apache/cordova/g;->a(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/b;)Z

    move-result v0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 245
    sget v4, Lorg/apache/cordova/x;->e:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 246
    sget-object v4, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "THREAD WARNING: exec() call to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " blocked the main thread for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms. Plugin should use CordovaInterface.getThreadPool()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lorg/apache/cordova/z;

    sget v2, Lorg/apache/cordova/aa;->h:I

    invoke-direct {v0, v2}, Lorg/apache/cordova/z;-><init>(I)V

    .line 250
    invoke-virtual {v1, v0}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/cordova/z;

    sget v2, Lorg/apache/cordova/aa;->i:I

    invoke-direct {v0, v2}, Lorg/apache/cordova/z;-><init>(I)V

    .line 254
    invoke-virtual {v1, v0}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V

    goto :goto_0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    sget-object v2, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    const-string v3, "Uncaught exception from plugin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2133
    new-instance v2, Lorg/apache/cordova/z;

    sget v3, Lorg/apache/cordova/aa;->j:I

    invoke-direct {v2, v3, v0}, Lorg/apache/cordova/z;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/cordova/b;->a(Lorg/apache/cordova/z;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/w;

    .line 185
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

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

    .line 194
    iget-boolean v2, v0, Lorg/apache/cordova/w;->d:Z

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lorg/apache/cordova/x;->f:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/w;->a(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)Lorg/apache/cordova/g;

    goto :goto_0

    .line 198
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

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

    .line 315
    iget-object v0, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lorg/apache/cordova/g;->a()V

    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 87
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lorg/apache/cordova/x;->g:Z

    if-eqz v0, :cond_a

    .line 1114
    iget-object v0, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "xml"

    iget-object v4, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v4}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1115
    if-nez v0, :cond_1

    .line 1117
    iget-object v0, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "xml"

    iget-object v4, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v4}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1118
    if-nez v0, :cond_1

    .line 1422
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    const-string v1, "ERROR: config.xml is missing.  Add res/xml/config.xml to your project."

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    const-string v1, "https://git-wip-us.apache.org/repos/asf?p=cordova-android.git;a=blob;f=framework/res/xml/config.xml"

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    const-string v1, "====================================================================================="

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iput-boolean v3, p0, Lorg/apache/cordova/x;->g:Z

    .line 103
    :goto_0
    new-instance v0, Lorg/apache/cordova/w;

    const-string v1, "PluginManager"

    new-instance v2, Lorg/apache/cordova/y;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/y;-><init>(Lorg/apache/cordova/x;B)V

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/w;-><init>(Ljava/lang/String;Lorg/apache/cordova/g;)V

    invoke-direct {p0, v0}, Lorg/apache/cordova/x;->a(Lorg/apache/cordova/w;)V

    .line 106
    invoke-direct {p0}, Lorg/apache/cordova/x;->e()V

    .line 107
    return-void

    .line 1124
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 1125
    const/4 v2, -0x1

    .line 1126
    const-string v1, ""

    const-string v0, ""

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v1, v3

    move v2, v3

    .line 1129
    :goto_1
    if-eq v6, v7, :cond_0

    .line 1130
    if-ne v6, v12, :cond_8

    .line 1131
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1132
    const-string v9, "url-filter"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1133
    sget-object v0, Lorg/apache/cordova/x;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Plugin "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is using deprecated tag <url-filter>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iget-object v0, p0, Lorg/apache/cordova/x;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1135
    iget-object v0, p0, Lorg/apache/cordova/x;->c:Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/x;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1138
    const-string v9, "value"

    invoke-interface {v8, v11, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    move-object v2, v4

    move-object v4, v5

    .line 1171
    :goto_2
    :try_start_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    move v6, v5

    move-object v5, v4

    move-object v4, v2

    move v2, v0

    .line 1176
    goto :goto_1

    .line 1140
    :cond_3
    const-string v9, "feature"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1144
    const-string v0, "name"

    invoke-interface {v8, v11, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v0, v7

    move-object v2, v4

    move-object v4, v5

    goto :goto_2

    .line 1146
    :cond_4
    if-eqz v2, :cond_c

    const-string v9, "param"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1147
    const-string v0, "name"

    invoke-interface {v8, v11, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    const-string v9, "service"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1149
    const-string v0, "value"

    invoke-interface {v8, v11, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v0, v2

    move-object v2, v4

    move-object v4, v5

    goto :goto_2

    .line 1150
    :cond_5
    const-string v9, "package"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "android-package"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1151
    :cond_6
    const-string v0, "value"

    invoke-interface {v8, v11, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v0, v2

    move-object v2, v4

    move-object v4, v5

    goto :goto_2

    .line 1152
    :cond_7
    const-string v9, "onload"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1153
    const-string v0, "true"

    const-string v1, "value"

    invoke-interface {v8, v11, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    move v1, v0

    move v0, v2

    move-object v2, v4

    move-object v4, v5

    .line 1155
    goto :goto_2

    .line 1156
    :cond_8
    const/4 v0, 0x3

    if-ne v6, v0, :cond_b

    .line 1158
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1159
    const-string v9, "feature"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "plugin"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1161
    :cond_9
    new-instance v0, Lorg/apache/cordova/w;

    invoke-direct {v0, v5, v4, v1}, Lorg/apache/cordova/w;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1162
    invoke-direct {p0, v0}, Lorg/apache/cordova/x;->a(Lorg/apache/cordova/w;)V

    .line 1165
    const-string v5, ""

    .line 1166
    const-string v4, ""

    move v0, v3

    move-object v2, v4

    move-object v4, v5

    .line 1167
    goto/16 :goto_2

    .line 1173
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v5, v4

    move-object v4, v2

    move v2, v0

    .line 1176
    goto/16 :goto_1

    .line 1175
    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v4

    move-object v4, v2

    move v2, v0

    .line 1176
    goto/16 :goto_1

    .line 97
    :cond_a
    invoke-direct {p0}, Lorg/apache/cordova/x;->f()V

    .line 98
    invoke-virtual {p0}, Lorg/apache/cordova/x;->b()V

    .line 99
    invoke-direct {p0}, Lorg/apache/cordova/x;->d()V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/cordova/x;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/apache/cordova/x;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 220
    iget-object v0, p0, Lorg/apache/cordova/x;->b:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lorg/apache/cordova/x$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/x$1;-><init>(Lorg/apache/cordova/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/x;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/w;

    .line 391
    iget-object v1, p0, Lorg/apache/cordova/x;->c:Ljava/util/HashMap;

    iget-object v3, v0, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 392
    if-eqz v1, :cond_2

    .line 393
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v0, v0, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/cordova/x;->b(Ljava/lang/String;)Lorg/apache/cordova/g;

    invoke-static {}, Lorg/apache/cordova/g;->d()Z

    move-result v0

    .line 404
    :goto_1
    return v0

    .line 398
    :cond_2
    iget-object v0, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lorg/apache/cordova/g;->d()Z

    goto :goto_0

    .line 404
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

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

    .line 339
    iget-object v0, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    if-eqz v0, :cond_0

    .line 340
    invoke-static {}, Lorg/apache/cordova/g;->b()V

    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/cordova/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/w;

    iget-object v0, v0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 414
    if-eqz v0, :cond_0

    .line 415
    invoke-static {}, Lorg/apache/cordova/g;->f()V

    goto :goto_0

    .line 418
    :cond_1
    return-void
.end method
