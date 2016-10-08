.class final Lcom/xueqiu/android/community/StatusDetailActivity$22;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/a/c;

.field final synthetic b:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic c:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->a:Lcom/xueqiu/android/cube/a/c;

    iput-object p3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 1451
    if-nez p1, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->a:Lcom/xueqiu/android/cube/a/c;

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/cube/a/c;)V

    .line 1460
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 4

    .prologue
    .line 1464
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1465
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    const-string v1, "extra_cube_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->b:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1467
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$22;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1468
    return-void
.end method
