.class final Lcom/xueqiu/android/cube/b/h$6;
.super Lcom/xueqiu/android/base/b/p;
.source "RebalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->K()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 908
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 911
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 912
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->n(Lcom/xueqiu/android/cube/b/h;)V

    .line 913
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->z()V

    .line 914
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 908
    check-cast p1, Lcom/xueqiu/android/cube/model/Cube;

    .line 1918
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1919
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v1, p1}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;

    .line 1920
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1921
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/cube/model/Cube;->setOwner(Lcom/xueqiu/android/community/model/User;)V

    .line 1923
    :cond_0
    const-string v1, "extra_cube"

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1924
    const-string v1, "extra_share"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1925
    const/high16 v1, 0x4100000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1926
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/b/h;->a(Landroid/content/Intent;)V

    .line 1927
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 1928
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$6;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->z()V

    .line 908
    return-void
.end method
