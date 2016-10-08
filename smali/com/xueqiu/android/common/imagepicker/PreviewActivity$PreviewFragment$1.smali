.class final Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;
.super Landroid/support/v4/a/v;
.source "PreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic b:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;->b:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;->b:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/h;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/imagepicker/h;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;->b:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment$1;->b:Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/PreviewActivity$PreviewFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
