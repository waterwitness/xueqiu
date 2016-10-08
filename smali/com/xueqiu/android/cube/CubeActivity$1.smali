.class final Lcom/xueqiu/android/cube/CubeActivity$1;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


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
    .line 301
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$1;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$1;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 1066
    iget-object v0, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 305
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method
