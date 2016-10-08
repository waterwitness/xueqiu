.class final Lcom/xueqiu/android/cube/CubeEditorialActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeEditorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeEditorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/EditorialCube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeEditorialActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$1;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lcom/xueqiu/android/cube/model/EditorialCube;

    .line 1065
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$1;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->a(Lcom/xueqiu/android/cube/CubeEditorialActivity;Lcom/xueqiu/android/cube/model/EditorialCube;)V

    .line 57
    return-void
.end method
