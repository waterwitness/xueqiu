.class final Lcom/xueqiu/android/cube/CubeEditorialActivity$4;
.super Ljava/lang/Object;
.source "CubeEditorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$4;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$4;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    const-class v2, Lcom/xueqiu/android/cube/EditorialHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$4;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method
