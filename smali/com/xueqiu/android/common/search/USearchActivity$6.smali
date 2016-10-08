.class final Lcom/xueqiu/android/common/search/USearchActivity$6;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 178
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$6;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 181
    if-ne p2, v0, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 183
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$6;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->d(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/search/b/a;->a(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$6;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    const v2, 0x7f070509

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    move v0, v1

    .line 227
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$6;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->e(Lcom/xueqiu/android/common/search/USearchActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 190
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->k()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "link"

    .line 1106
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->k()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "link"

    .line 2106
    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$6;->a:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 198
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->k()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "promotion_id"

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/r;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v2

    .line 199
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 200
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xueqiu/android/common/search/USearchActivity$6$1;

    invoke-direct {v7, p0}, Lcom/xueqiu/android/common/search/USearchActivity$6$1;-><init>(Lcom/xueqiu/android/common/search/USearchActivity$6;)V

    .line 199
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/xueqiu/android/base/b/ai;->d(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 216
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v4, 0x898

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 218
    const-string v4, "ad_id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 219
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move v0, v1

    .line 224
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 227
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
