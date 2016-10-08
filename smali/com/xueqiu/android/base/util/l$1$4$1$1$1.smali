.class final Lcom/xueqiu/android/base/util/l$1$4$1$1$1;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l$1$4$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/l$1$4$1$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1$4$1$1;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1117
    const-string v0, "portfolio"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "portfolio"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1119
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    .line 2096
    iget-object v2, v2, Lcom/xueqiu/android/stock/a/n;->a:Ljava/util/List;

    .line 1119
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1120
    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1121
    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    .line 2100
    iput-object v1, v2, Lcom/xueqiu/android/stock/a/n;->a:Ljava/util/List;

    .line 1122
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/a/n;->a()Ljava/util/List;

    move-result-object v1

    .line 1123
    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1124
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/n;->a(Ljava/util/List;)V

    .line 1125
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/n;->notifyDataSetChanged()V

    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    const-string v1, "extra_portfolio_category"

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget v2, v2, Lcom/xueqiu/android/base/util/l$1;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1128
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$1$4$1$1$1;->a:Lcom/xueqiu/android/base/util/l$1$4$1$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4$1$1;->b:Lcom/xueqiu/android/base/util/l$1$4$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 114
    :cond_0
    return-void
.end method
