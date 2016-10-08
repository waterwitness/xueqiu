.class final Lcom/xueqiu/android/cube/CubeCardListActivity$2;
.super Ljava/lang/Object;
.source "CubeCardListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeCardListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeCardListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$2;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$2;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$2;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Lcom/xueqiu/android/cube/CubeCardListActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 157
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$2;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "extra_cube_symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "extra_cube_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$2;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeCardListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method
