.class final Lcom/xueqiu/android/cube/CreateCubeActivity$1;
.super Ljava/lang/Object;
.source "CreateCubeActivity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CreateCubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CreateCubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CreateCubeActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public final b_(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->a(Lcom/xueqiu/android/cube/CreateCubeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 74
    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->b(Lcom/xueqiu/android/cube/CreateCubeActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->b(Lcom/xueqiu/android/cube/CreateCubeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->b(Lcom/xueqiu/android/cube/CreateCubeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/b/h;

    .line 1951
    iget-object v1, v0, Lcom/xueqiu/android/cube/b/h;->c:Lcom/xueqiu/android/cube/a/d;

    .line 2227
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d;->a:Ljava/util/List;

    .line 1951
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1952
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->C()V

    .line 1953
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/b/h;->u()V

    .line 78
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 79
    const v0, 0x7f070359

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    .line 3066
    iget-object v1, v1, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v1}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$1;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    .line 4066
    iget-object v1, v1, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v1}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->b(I)V

    .line 88
    :cond_1
    return-void

    .line 80
    :cond_2
    if-ne p1, v2, :cond_3

    .line 81
    const v0, 0x7f0702da

    goto :goto_0

    .line 83
    :cond_3
    const v0, 0x7f0700c7

    goto :goto_0
.end method
