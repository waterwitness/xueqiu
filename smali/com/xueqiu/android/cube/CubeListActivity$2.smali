.class final Lcom/xueqiu/android/cube/CubeListActivity$2;
.super Ljava/lang/Object;
.source "CubeListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeListActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 6

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    const v2, 0x7f0700b6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/cube/CubeListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/cube/CubeListActivity$2$1;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/cube/CubeListActivity$2$1;-><init>(Lcom/xueqiu/android/cube/CubeListActivity$2;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeListActivity;->a(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "extra_cube_symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "extra_cube_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$2;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/CubeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method
