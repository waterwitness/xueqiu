.class final Lcom/xueqiu/android/cube/CubeActivity$65;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$65;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 471
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$65;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 472
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$65;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 473
    return-void
.end method
