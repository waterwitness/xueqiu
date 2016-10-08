.class final Lcom/xueqiu/android/common/a$6;
.super Lcom/xueqiu/android/base/b/p;
.source "AboutUsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/a;->b(I)V
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
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/common/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/a;Lcom/xueqiu/android/base/b/q;Lorg/json/JSONObject;I)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    iput-object p3, p0, Lcom/xueqiu/android/common/a$6;->a:Lorg/json/JSONObject;

    iput p4, p0, Lcom/xueqiu/android/common/a$6;->b:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 240
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 241
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 185
    check-cast p1, Lorg/json/JSONObject;

    .line 1191
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1195
    :goto_0
    if-eqz v0, :cond_1

    .line 1197
    :try_start_0
    const-string v0, "img_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    iget-object v1, p0, Lcom/xueqiu/android/common/a$6;->c:Lcom/xueqiu/android/common/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/a;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_share_content"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 1207
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/common/a$6$1;

    invoke-direct {v3, p0, p1}, Lcom/xueqiu/android/common/a$6$1;-><init>(Lcom/xueqiu/android/common/a$6;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1235
    :goto_2
    return-void

    .line 1191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/a$6;->a:Lorg/json/JSONObject;

    const-string v1, "img_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    iget-object p1, p0, Lcom/xueqiu/android/common/a$6;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1234
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
