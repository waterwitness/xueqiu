.class final Lcom/xueqiu/android/cube/CubeActivity$41;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$41;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$41;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    const-string v3, "extra_user"

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity$41;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v4}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1933
    return-void
.end method
