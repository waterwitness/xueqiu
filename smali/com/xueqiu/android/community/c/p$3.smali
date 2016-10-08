.class final Lcom/xueqiu/android/community/c/p$3;
.super Ljava/lang/Object;
.source "RewardListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/p;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/community/c/p$3;->a:Lcom/xueqiu/android/community/c/p;

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
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/c/p$3;->a:Lcom/xueqiu/android/community/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/p;->b(Lcom/xueqiu/android/community/c/p;)Lcom/xueqiu/android/community/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ad;->a()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/RewardCash;

    .line 99
    new-instance v1, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 100
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RewardCash;->getUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/c/p$3;->a:Lcom/xueqiu/android/community/c/p;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string v2, "extra_user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/xueqiu/android/community/c/p$3;->a:Lcom/xueqiu/android/community/c/p;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/p;->a(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
