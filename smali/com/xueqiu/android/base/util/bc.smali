.class public final Lcom/xueqiu/android/base/util/bc;
.super Ljava/lang/Object;
.source "ValidateUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    :try_start_0
    const-string v1, "GBK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 24
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    const-string v1, "^[a-zA-Z0-9\u4e00-\u9fa5_-]*$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    const-string v2, "validateScreenName"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
