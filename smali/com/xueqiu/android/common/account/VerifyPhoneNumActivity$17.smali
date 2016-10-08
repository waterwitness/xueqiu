.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$17;
.super Lcom/xueqiu/android/base/b/p;
.source "VerifyPhoneNumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$17;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 321
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_0

    const-string v1, "20060"

    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/base/a/a;

    .line 1064
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 310
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1314
    const-string v0, "user_id"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v0

    .line 1315
    const-string v2, "screen_name"

    .line 2110
    const-string v3, ""

    invoke-static {p1, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    iget-object v3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$17;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v3, v0, v1, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->a(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;JLjava/lang/String;)V

    .line 310
    return-void
.end method
