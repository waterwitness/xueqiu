.class final Lcom/xueqiu/android/cube/CubeEditorialActivity$2;
.super Ljava/lang/Object;
.source "CubeEditorialActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeEditorialActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeEditorialActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

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
    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->a(Lcom/xueqiu/android/cube/CubeEditorialActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 89
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "extra_cube_symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "extra_cube_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method
