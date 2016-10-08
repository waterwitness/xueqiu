.class final Lcom/xueqiu/android/community/SimpleStatusListActivity$1;
.super Ljava/lang/Object;
.source "SimpleStatusListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/SimpleStatusListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/SimpleStatusListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/SimpleStatusListActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity$1;->a:Lcom/xueqiu/android/community/SimpleStatusListActivity;

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
    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity$1;->a:Lcom/xueqiu/android/community/SimpleStatusListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->a(Lcom/xueqiu/android/community/SimpleStatusListActivity;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 68
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Status;

    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity$1;->a:Lcom/xueqiu/android/community/SimpleStatusListActivity;

    const-class v3, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/community/SimpleStatusListActivity$1;->a:Lcom/xueqiu/android/community/SimpleStatusListActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/SimpleStatusListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method
