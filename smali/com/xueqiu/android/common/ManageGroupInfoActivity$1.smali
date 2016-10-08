.class final Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;
.super Ljava/lang/Object;
.source "ManageGroupInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/ManageGroupInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->b(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;->a:Lcom/xueqiu/android/common/ManageGroupInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->b(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_1
    const v0, 0x7f07018c

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
