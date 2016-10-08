.class public final Lcom/xueqiu/android/base/b/a/c;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16
    if-nez p0, :cond_1

    .line 19
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
