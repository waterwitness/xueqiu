.class final Lcom/xueqiu/android/common/imagepicker/PickActivity$2;
.super Ljava/lang/Object;
.source "PickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 51
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->b(Lcom/xueqiu/android/common/imagepicker/PickActivity;)Lcom/xueqiu/android/common/imagepicker/d;

    move-result-object v0

    .line 1150
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->b(Lcom/xueqiu/android/common/imagepicker/PickActivity;)Lcom/xueqiu/android/common/imagepicker/d;

    move-result-object v0

    .line 2150
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/d;->b:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/c;

    .line 3034
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/c;->d:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/imagepicker/PreviewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v2, "extra_images"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/xueqiu/android/common/imagepicker/PickActivity$2;->a:Lcom/xueqiu/android/common/imagepicker/PickActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/imagepicker/PickActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method
