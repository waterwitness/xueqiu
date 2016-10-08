.class final Lcom/xueqiu/android/base/s$1;
.super Lcom/xueqiu/android/base/b/p;
.source "SNBUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xueqiu/android/base/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/s;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/base/s$1;->b:Lcom/xueqiu/android/base/s;

    iput-object p2, p0, Lcom/xueqiu/android/base/s$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 128
    const-string v0, "GrayUpdate"

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 125
    check-cast p1, Lorg/json/JSONObject;

    .line 1134
    :try_start_0
    const-string v0, "isGray"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isGray"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "downloadUrl"

    .line 1135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1136
    const-string v0, "downloadUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    const-string v1, "changeLog"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    iget-object v2, p0, Lcom/xueqiu/android/base/s$1;->b:Lcom/xueqiu/android/base/s;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/s;->a(Lcom/xueqiu/android/base/s;Ljava/lang/String;)Ljava/lang/String;

    .line 1139
    iget-object v2, p0, Lcom/xueqiu/android/base/s$1;->b:Lcom/xueqiu/android/base/s;

    iget-object v3, p0, Lcom/xueqiu/android/base/s$1;->b:Lcom/xueqiu/android/base/s;

    invoke-static {v3}, Lcom/xueqiu/android/base/s;->a(Lcom/xueqiu/android/base/s;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/s;->b(Lcom/xueqiu/android/base/s;Ljava/lang/String;)Ljava/lang/String;

    .line 1140
    iget-object v2, p0, Lcom/xueqiu/android/base/s$1;->b:Lcom/xueqiu/android/base/s;

    iget-object v3, p0, Lcom/xueqiu/android/base/s$1;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/xueqiu/android/base/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    const-string v1, "GrayUpdate"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
