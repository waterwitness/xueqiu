.class final Lcom/xueqiu/android/trade/d/g$4;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeHistoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/trade/model/TrustDeed;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/model/TrustDeed;

.field final synthetic b:Lcom/xueqiu/android/trade/d/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/g;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/trade/model/TrustDeed;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    iput-object p3, p0, Lcom/xueqiu/android/trade/d/g$4;->a:Lcom/xueqiu/android/trade/model/TrustDeed;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    .line 1038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 249
    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/c;->z()V

    .line 250
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_3

    .line 251
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 1064
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 252
    invoke-static {v0}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 253
    invoke-static {v0}, Lcom/xueqiu/android/trade/g;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/g$4;->a:Lcom/xueqiu/android/trade/model/TrustDeed;

    .line 2038
    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/xueqiu/android/trade/d/g;->a(Lcom/xueqiu/android/base/a/a;Lcom/xueqiu/android/trade/model/TradeAccount;ILjava/lang/Object;)V

    .line 3158
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "70004"

    .line 2064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 257
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/d/g;->a(Ljava/lang/String;)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    .line 3038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->c:Landroid/content/Context;

    .line 3157
    const-string v1, "70004"

    .line 4064
    iget-object v2, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 3157
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4165
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0085

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 4166
    const v0, 0x7f0704cb

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4167
    invoke-virtual {p1}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4168
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4169
    const v0, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/trade/g$2;

    invoke-direct {v2}, Lcom/xueqiu/android/trade/g$2;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4174
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 3160
    :cond_2
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 263
    :cond_3
    const-string v0, "\u64a4\u5355\u51fa\u9519"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 264
    const-string v0, "TradeHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryTransactionGJGLList error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 232
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 4236
    const-string v0, "TradeHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryTransactionGJGLList response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4238
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 4239
    const-string v1, "cancel_oid"

    .line 5106
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4240
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/d/g;->a(Ljava/lang/String;)V

    .line 4241
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    .line 6038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 4241
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/l;->L_()V

    .line 4244
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/g$4;->b:Lcom/xueqiu/android/trade/d/g;

    .line 7038
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/g;->a:Lcom/xueqiu/android/trade/b/l;

    .line 4244
    check-cast v0, Lcom/xueqiu/android/common/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/c;->z()V

    .line 232
    return-void
.end method
