.class final Lcom/xueqiu/android/community/d$8;
.super Lcom/xueqiu/android/base/b/p;
.source "FindPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d;
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
.field final synthetic a:Lcom/xueqiu/android/community/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d;->z()V

    .line 461
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 462
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 457
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1466
    iget-object v0, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d;->z()V

    .line 1468
    const-string v0, "oauthbind"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1469
    const-string v0, "oauthbind"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    move v0, v1

    .line 1471
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1472
    invoke-virtual {v2, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 1473
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 1474
    const-string v5, "sina"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1475
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    .line 1476
    if-eqz v3, :cond_1

    .line 1477
    iget-object v3, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;I)I

    .line 1471
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;I)I

    goto :goto_1

    .line 1484
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/d;->c(Lcom/xueqiu/android/community/d;I)I

    .line 1487
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/d;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1488
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1489
    const-string v1, "bound_info"

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1492
    iget-object v0, p0, Lcom/xueqiu/android/community/d$8;->a:Lcom/xueqiu/android/community/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/d;->k(Lcom/xueqiu/android/community/d;)V

    .line 457
    return-void
.end method
