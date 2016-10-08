.class final Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/imagepicker/GalleryActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v1, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->p:Ljava/util/Map;

    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->k:Lcom/xueqiu/android/common/imagepicker/a;

    .line 1097
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/a;->a:Ljava/util/List;

    .line 66
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/imagepicker/c;

    .line 2026
    iget-object v0, v0, Lcom/xueqiu/android/common/imagepicker/c;->c:Ljava/lang/String;

    .line 66
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/imagepicker/PickActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v2, "extra_images"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/imagepicker/GalleryActivity$1;->a:Lcom/xueqiu/android/common/imagepicker/GalleryActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/imagepicker/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    :cond_0
    return-void
.end method
