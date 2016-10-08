.class final Lcom/xueqiu/android/community/RewardListActivity$1;
.super Ljava/lang/Object;
.source "RewardListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/RewardListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RewardListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RewardListActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/xueqiu/android/community/RewardListActivity$1;->a:Lcom/xueqiu/android/community/RewardListActivity;

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
    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity$1;->a:Lcom/xueqiu/android/community/RewardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RewardListActivity;->a(Lcom/xueqiu/android/community/RewardListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 64
    invoke-virtual {v0, p3}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Reward;

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/RewardListActivity$1;->a:Lcom/xueqiu/android/community/RewardListActivity;

    const-class v3, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v2, "extra_user"

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Reward;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/RewardListActivity$1;->a:Lcom/xueqiu/android/community/RewardListActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/RewardListActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
