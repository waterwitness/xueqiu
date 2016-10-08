.class final Lcom/xueqiu/android/community/a/ak$28;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Lcom/xueqiu/android/cube/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->c(Landroid/view/View;I)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/a/c;

.field final synthetic b:Lcom/xueqiu/android/community/model/RecommendCard;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/cube/a/c;Lcom/xueqiu/android/community/model/RecommendCard;)V
    .locals 0

    .prologue
    .line 1823
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$28;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$28;->a:Lcom/xueqiu/android/cube/a/c;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$28;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 1827
    return-void
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 3

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$28;->c:Lcom/xueqiu/android/community/a/ak;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1831
    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v1, Lcom/xueqiu/android/community/a/ak$28$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/a/ak$28$1;-><init>(Lcom/xueqiu/android/community/a/ak$28;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 1847
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 5

    .prologue
    .line 1851
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$28;->c:Lcom/xueqiu/android/community/a/ak;

    .line 3089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1851
    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1852
    const-string v1, "extra_cube_symbol"

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1853
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$28;->c:Lcom/xueqiu/android/community/a/ak;

    .line 4089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1853
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1855
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$28;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1856
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$28;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$28;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendCard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak$28;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/RecommendCard;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/a/ak$28;->b:Lcom/xueqiu/android/community/model/RecommendCard;

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/RecommendCard;->getLocation()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xueqiu/android/community/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1858
    :cond_0
    return-void
.end method
