.class final Lcom/xueqiu/android/common/search/USearchActivity$5;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$5;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$5;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->b(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/b/a;->a(Z)V

    .line 137
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    move-result-object v0

    .line 1378
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "0x05"

    .line 1380
    :goto_0
    const-string v5, "0x08"

    .line 1381
    const-wide/16 v6, 0x0

    .line 1382
    invoke-static {}, Lcom/xueqiu/android/base/a;->i()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "promotion_id"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1383
    invoke-static {}, Lcom/xueqiu/android/base/a;->i()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "promotion_id"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v6

    .line 1385
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 1386
    new-instance v8, Lcom/xueqiu/android/base/a$5;

    invoke-direct {v8, v0}, Lcom/xueqiu/android/base/a$5;-><init>(Lcom/xueqiu/android/base/a;)V

    .line 1385
    invoke-virtual/range {v1 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 141
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x898

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 143
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$5;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/search/USearchActivity;->c(Lcom/xueqiu/android/common/search/USearchActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    return-void

    .line 1378
    :cond_1
    const-string v4, "0x04"

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
