.class final Lcom/xueqiu/android/cube/CubeActivity$19;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->a:Landroid/content/Intent;

    const-string v1, "rebalance"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 1157
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->a:Landroid/content/Intent;

    const-string v2, "extra_rb_desc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->b:Lcom/xueqiu/android/cube/CubeActivity;

    const v3, 0x7f07041e

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/xueqiu/android/cube/CubeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1161
    invoke-static {}, Lcom/xueqiu/android/base/util/ap;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1163
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$19;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/cube/CubeActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v4

    const-string v5, "rebalancing"

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v1, v5, v0}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/cube/CubeActivity$19$1;

    invoke-direct {v1, p0, v2}, Lcom/xueqiu/android/cube/CubeActivity$19$1;-><init>(Lcom/xueqiu/android/cube/CubeActivity$19;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 1183
    return-void
.end method
