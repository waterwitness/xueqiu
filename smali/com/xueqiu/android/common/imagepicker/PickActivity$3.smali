.class final Lcom/xueqiu/android/common/imagepicker/PickActivity$3;
.super Ljava/lang/Object;
.source "PickActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/imagepicker/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/imagepicker/PickActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/imagepicker/PickActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$3;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$3;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->c(Lcom/xueqiu/android/common/imagepicker/PickActivity;)V

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$3;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->d(Lcom/xueqiu/android/common/imagepicker/PickActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$3;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->b(Lcom/xueqiu/android/common/imagepicker/PickActivity;)Lcom/xueqiu/android/common/imagepicker/d;

    move-result-object v0

    .line 1150
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 75
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f07035a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 80
    return-void
.end method
