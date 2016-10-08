.class final Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$2;
.super Landroid/support/v4/view/ct;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$2;->a:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ct;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_(I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$2;->a:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a:Lcom/xueqiu/android/common/imagepicker/g;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$2;->a:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a:Lcom/xueqiu/android/common/imagepicker/g;

    invoke-interface {v0}, Lcom/xueqiu/android/common/imagepicker/g;->a()V

    .line 136
    :cond_0
    return-void
.end method
