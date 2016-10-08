.class final Lcom/xueqiu/android/common/WelcomeActivity$6;
.super Lcom/xueqiu/android/base/b/p;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WelcomeActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/xueqiu/android/common/WelcomeActivity$6;->a:Lcom/xueqiu/android/common/WelcomeActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 442
    const-string v0, "WelcomeActivity"

    const-string v1, "log ad show failed"

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 439
    check-cast p1, Lorg/json/JSONObject;

    .line 1448
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    const-string v0, "WelcomeActivity"

    const-string v1, "log ad show failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    const-string v1, "WelcomeActivity"

    const-string v2, "log ad show failed "

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
