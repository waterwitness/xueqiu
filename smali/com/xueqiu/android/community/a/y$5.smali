.class final Lcom/xueqiu/android/community/a/y$5;
.super Ljava/lang/Object;
.source "RecommendAdapter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/y;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$5;->b:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$5;->a:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 427
    .line 4430
    iget-object v2, p0, Lcom/xueqiu/android/community/a/y$5;->a:Lcom/google/gson/JsonObject;

    const-string v3, "has_exist"

    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$5;->a:Lcom/google/gson/JsonObject;

    const-string v4, "has_exist"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4431
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$5;->b:Lcom/xueqiu/android/community/a/y;

    .line 5338
    iget-object v0, v0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 4432
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4433
    const-string v2, "extra_portfolio_category"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4434
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$5;->b:Lcom/xueqiu/android/community/a/y;

    .line 6065
    iget-object v1, v1, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    .line 4434
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 427
    return-void

    .line 4430
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
