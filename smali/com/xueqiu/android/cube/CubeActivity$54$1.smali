.class final Lcom/xueqiu/android/cube/CubeActivity$54$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity$54;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity$54;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity$54;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 2561
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$54$1;->a:Lcom/xueqiu/android/cube/CubeActivity$54;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 2565
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2561
    check-cast p1, Lorg/json/JSONObject;

    .line 3569
    if-eqz p1, :cond_1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3571
    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3572
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$54$1;->a:Lcom/xueqiu/android/cube/CubeActivity$54;

    iget-object v2, v2, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const-class v3, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3573
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3574
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3575
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$54$1;->a:Lcom/xueqiu/android/cube/CubeActivity$54;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3576
    const-string v0, "extra_card_param"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$54$1;->a:Lcom/xueqiu/android/cube/CubeActivity$54;

    iget-object v2, v2, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3577
    const-string v0, "extra_card_type"

    const-string v2, "cube"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3579
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$54$1;->a:Lcom/xueqiu/android/cube/CubeActivity$54;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeActivity$54;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3582
    :cond_1
    :goto_0
    return-void

    .line 3580
    :catch_0
    move-exception v0

    .line 3581
    const-string v1, "CubeActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
