.class final Lcom/xueqiu/android/community/StatusDetailActivity$31;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
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
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$31;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 2058
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 2059
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2055
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 3063
    if-eqz p1, :cond_0

    .line 3066
    const-string v0, "StatusDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pushTOFans onResponse success = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "success"

    .line 3106
    invoke-static {p1, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3067
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3066
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-string v0, "true"

    const-string v1, "success"

    .line 4106
    invoke-static {p1, v1, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3069
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3070
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$31;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const v1, 0x7f0702ac

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 2055
    :cond_0
    return-void
.end method
