.class final Lcom/xueqiu/android/common/camera/a$1;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/camera/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/camera/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/camera/a;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/xueqiu/android/common/camera/a$1;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/common/camera/a$1;->a:Lcom/xueqiu/android/common/camera/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/camera/a;->a(Lcom/xueqiu/android/common/camera/a;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method
